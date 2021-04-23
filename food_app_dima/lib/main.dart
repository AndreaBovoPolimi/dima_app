import 'package:flutter/material.dart';
import 'package:food_app_dima/pages/login.dart';
import 'package:food_app_dima/utils/authentication.dart';
import 'package:food_app_dima/utils/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

import 'examples/fitness_app/fitness_app_home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
              title: 'Dima App',
              theme: theme.getTheme(),
              debugShowCheckedModeBanner: false,
              //home: MyHomePage(title: 'PORCO DIO'),
              home: Login(),
            ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
              future: Authentication.initializeFirebase(context),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error initializing Firebase');
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return Text('va');
                }
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.blue,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
