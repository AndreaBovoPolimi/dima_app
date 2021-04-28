import 'package:flutter/material.dart';
import 'package:food_app_dima/services/spoonacular/ingredients_service.dart';
import 'package:flutter/foundation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME TEST REST", style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                SpoonacularIngredientsApi()
                    .getIngredientById("2047")
                    .then((value) => print(value.toJson()));
              },
              child: Text("Chiama Spoonacular"),
            ),
          ],
        ),
      ),
    );
  }
}
