import 'package:http/http.dart' as http;

class SpoonacularApi {
  final String baseUrl = 'api.spoonacular.com';

  var apiKey = {'apiKey': '71d2a4fb98d849989d891a1a66125f35'};

  Future get<T>(String endpoint,
      [Map<String, dynamic> queryParameters = const {}]) {
    return http.get(
        Uri.https(this.baseUrl, endpoint, {...queryParameters, ...apiKey}));
  }
}
