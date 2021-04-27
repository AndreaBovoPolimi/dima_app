import 'package:flutter/material.dart';
import 'package:food_app_dima/utils/theme_notifier.dart';
import 'package:provider/provider.dart';

class DarkThemeExamples extends StatefulWidget {
  @override
  DarkThemeExamplesState createState() => DarkThemeExamplesState();
}

class DarkThemeExamplesState extends State<DarkThemeExamples> {
  @override
  Widget build(BuildContext context) {
    ThemeNotifier _themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Hybrid Theme'),
      ),
      body: Row(
        children: [
          Container(
            child: FlatButton(
              onPressed: () => {
                _themeNotifier.setLightMode(),
              },
              child: Text('Set Light Theme'),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () => {
                _themeNotifier.setDarkMode(),
              },
              child: Text('Set Dark theme'),
            ),
          ),
        ],
      ),
    );
  }
}
