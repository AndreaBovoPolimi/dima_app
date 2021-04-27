import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:food_app_dima/auth/authentication_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //Handling signup and signin
  bool signUp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //e-mail textfield
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
          ),

          //password textfield
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
          ),

          //Sign in / Sign up button
          RaisedButton(
            onPressed: () {
              if (signUp) {
                //Provider sign up method
                context.read<AuthenticationProvider>().signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
              } else {
                //Provider sign in method
                context.read<AuthenticationProvider>().signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
              }
            },
            child: signUp ? Text("Sign Up") : Text("Sign In"),
          ),

          //Sign up / Sign In toggler
          OutlineButton(
            onPressed: () {
              setState(() {
                signUp = !signUp;
              });
            },
            child: signUp
                ? Text("Have an account? Sign In")
                : Text("Create an account"),
          ),
          SignInButton(
            Buttons.Google,
            onPressed: () {
              context.read<AuthenticationProvider>().signInWithGoogle();
            },
          ),
        ],
      ),
    );
  }
}
