import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String link) async {
  final Uri url = Uri.parse(link);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

ThemeData getAppTheme(BuildContext context, bool isDarkTheme) {
  return ThemeData(
    scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
    textTheme: Theme.of(context)
        .textTheme
        .copyWith(
          titleSmall:
              Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 11),
        )
        .apply(
          bodyColor: isDarkTheme ? Colors.white : Colors.black,
          displayColor: Colors.grey,
        ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
          isDarkTheme ? Colors.orange : Colors.purple),
    ),
    listTileTheme: ListTileThemeData(
        iconColor: isDarkTheme ? Colors.orange : Colors.purple),
    appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme ? Colors.black : Colors.white,
        iconTheme:
            IconThemeData(color: isDarkTheme ? Colors.white : Colors.black54)),
  );
}
