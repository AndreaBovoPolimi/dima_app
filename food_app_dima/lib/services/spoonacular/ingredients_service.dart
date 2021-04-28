import 'package:food_app_dima/models/spoonacular_models.dart';
import 'package:http/http.dart';
import 'spoonacular.dart';
import 'dart:convert';

class SpoonacularIngredientsApi extends SpoonacularApi {
  String baseEndpoint = 'food/ingredients/';

  Future<Ingredient> getIngredientById(String ingredientId) async {
    Response res = await this
        .get<Ingredient>(baseEndpoint + ingredientId + '/information');
    return ingredientFromJson(res.body);
  }
}
