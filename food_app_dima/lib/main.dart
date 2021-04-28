import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app_dima/examples/test.dart';
import 'package:food_app_dima/pages/login.dart';
import 'package:food_app_dima/utils/theme_notifier.dart';
import 'package:provider/provider.dart';

import 'auth/authenticate.dart';
import 'auth/authentication_provider.dart';
import 'examples/dark_theme_examples.dart';
import 'examples/fitness_app/fitness_app_home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationProvider>(
          create: (_) => AuthenticationProvider(FirebaseAuth.instance),
        ),
        ChangeNotifierProvider<ThemeNotifier>(
          create: (_) => ThemeNotifier(),
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationProvider>().authState,
          initialData: null,
        )
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Dima App',
            theme: Provider.of<ThemeNotifier>(context).getTheme(),
            home: HomePage(),
          );
        },
      ),
    );
  }
}
