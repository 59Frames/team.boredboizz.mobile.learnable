import 'package:flutter/material.dart';
import 'package:learnable/locale/locales.dart';
import 'package:learnable/color_config.dart' as colorConfig;

final localizations = AppLocalizations();

class LegalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.about),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextTitle(
                title: localizations.disclaimer,
                size: 3,
                isFirst: true,
              ),
              Text(localizations.disclaimerText),
              TextTitle(
                title: localizations.copyrights,
                size: 3,
              ),
              Text(localizations.copyrightsText),
              TextTitle(
                title: localizations.privacy,
                size: 3,
              ),
              Text(localizations.privacyText),
            ],
          ),
        ),
      )),
    );
  }
}

class TextTitle extends StatelessWidget {
  final String title;
  final double size;
  final bool isFirst;

  const TextTitle(
      {Key key, @required this.title, this.size, this.isFirst = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFirst
          ? const EdgeInsets.only(bottom: 8.0)
          : const EdgeInsets.only(bottom: 8.0, top: 16.0),
      child: Text(
        title,
        style: TextStyle(
            color: colorConfig.DARK_FONT_COLOR,
            fontSize: 8 * size,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
