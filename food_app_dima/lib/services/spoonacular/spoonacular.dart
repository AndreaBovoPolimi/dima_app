import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class SpoonacularApi {
  final String baseUrl = 'https://api.spoonacular.com';

  var apiKey = {'apiKey': '71d2a4fb98d849989d891a1a66125f35'};

  Future get(String endpoint,
      [Map<String, dynamic> queryParameters = const {}]) {
    return http.get(
        Uri.https(this.baseUrl, endpoint, {...queryParameters, ...apiKey}));
  }
}
