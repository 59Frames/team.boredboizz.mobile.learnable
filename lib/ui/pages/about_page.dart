import 'package:flutter/material.dart';
import 'package:learnable/locale/locales.dart';
import 'package:learnable/color_config.dart' as colorConfig;
import 'package:learnable/utils/notification_util.dart';

final localizations = AppLocalizations();

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.about),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Notifier().notify("Test", "blabla", 1);
              },
              child: Text("Prompt"),
            ),
            RaisedButton(
              onPressed: () {
                Notifier().schedule("Test", "blabla", 2, DateTime.now().add(Duration(milliseconds: 50)));
              },
              child: Text("Scheduled"),
            ),
          ],
        ),
      ),
    );
  }
}
