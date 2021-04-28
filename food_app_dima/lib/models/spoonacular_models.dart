import 'dart:convert';

Ingredient ingredientFromJson(String str) =>
    Ingredient.fromJson(json.decode(str));

String ingredientToJson(Ingredient data) => json.encode(data.toJson());

class Ingredient {
  Ingredient({
    this.id,
    this.original,
    this.originalName,
    this.name,
    this.amount,
  });

  int id;
  String original;
  String originalName;
  String name;
  int amount;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        id: json["id"],
        original: json["original"],
        originalName: json["originalName"],
        name: json["name"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "original": original,
        "originalName": originalName,
        "name": name,
        "amount": amount,
      };
}
