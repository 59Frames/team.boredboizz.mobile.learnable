import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learnable/data/cached_base.dart';
import 'package:learnable/locale/locales.dart';
import 'package:learnable/routes.dart';
import 'package:learnable/ui/pages/config_page.dart';
import 'package:learnable/utils/network_util.dart';
import 'package:learnable/color_config.dart' as colorConfig;
import 'package:background_fetch/background_fetch.dart';
import 'package:learnable/utils/notification_util.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(LearnableApp());
  BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
}

void backgroundFetchHeadlessTask() async {
  print('[BackgroundFetch] Headless event received.');
  checkForNotifiableEventsAndNotify();
  BackgroundFetch.finish();
}


class LearnableApp extends StatefulWidget {
  @override
  _LearnableAppState createState() => _LearnableAppState();
}

class _LearnableAppState extends State<LearnableApp> with WidgetsBindingObserver {
  List<DateTime> _events = [];
  int _status = 0;

  @override
  void initState() {
    super.initState();
    NetworkUtil().activateConnectionSubscription();
    WidgetsBinding.instance.addObserver(this);
    initPlatformState();
    BackgroundFetch.start().then((status) {
      print("[BackgroundFetch] start success: $status");
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    NetworkUtil().dispose();
    super.dispose();
  }

  Future<void> initPlatformState() async {
    // Configure BackgroundFetch.
    BackgroundFetch.configure(BackgroundFetchConfig(
        minimumFetchInterval: 15,
        stopOnTerminate: false,
        enableHeadless: true
    ), () async {
      // This is the fetch-event callback.
      print('[BackgroundFetch] Event received');

      checkForNotifiableEventsAndNotify();

      setState(() {
        _events.insert(0, new DateTime.now());
      });
      // IMPORTANT:  You must signal completion of your fetch task or the OS can punish your app
      // for taking too long in the background.
      BackgroundFetch.finish();
    }).then((int status) {
      print('[BackgroundFetch] SUCCESS: $status');
      setState(() {
        _status = status;
      });
    }).catchError((e) {
      print('[BackgroundFetch] ERROR: $e');
      setState(() {
        _status = e;
      });
    });

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppLocalizations().applicationName,
      theme: ThemeData(
        primaryColorDark: colorConfig.PRIMARY_COLOR,
        primaryColor: colorConfig.PRIMARY_COLOR_DARK,
        primaryColorLight: colorConfig.PRIMARY_COLOR_LIGHT,
        primaryIconTheme: IconThemeData(
          color: colorConfig.PRIMARY_ICON_COLOR
        ),
      ),
      home: ConfigPage(),
      routes: routes,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive)
      CachedBase().persist();

    print("AppLifecycleState changed to $state");
  }
}

void checkForNotifiableEventsAndNotify() {
  CachedBase().buildWithNoPush().then((n) {

    var events = CachedBase().getEventMap;

    DateTime notifiableDay = DateTime.now().subtract(Duration(days: 3));
    events.forEach((id, event) {
      if (event.lesson.start.day == notifiableDay.day) {
        Notifier().notify("${event.title}", "${event.description}", Random().nextInt(1000));
      }
    });

    CachedBase().clear();
  });

}
