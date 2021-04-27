import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app_dima/pages/home.dart';
import 'package:food_app_dima/pages/login.dart';
import 'package:provider/provider.dart';

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return LoginPage();
  }
}
