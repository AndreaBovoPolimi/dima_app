import 'package:food_app_dima/models/spoonacular_models.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'spoonacular.dart';

class SpoonacularIngredientsApi extends SpoonacularApi {
  String baseUrl = 'food/ingredients/';

  Future<Ingredient> getIngredientById(String ingredientId) {
    return this.get(baseUrl + ingredientId + '/information');
  }
}
