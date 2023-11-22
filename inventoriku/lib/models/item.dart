import 'dart:convert';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  String model;
  int pk;
  Fields fields;

  Item({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  int user;
  String name;
  int amount;
  int price;
  String description;
  DateTime dateAdded;
  String categories;

  Fields({
    required this.user,
    required this.name,
    required this.amount,
    required this.price,
    required this.description,
    required this.dateAdded,
    required this.categories,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    user: json["user"],
    name: json["name"],
    amount: json["amount"],
    price: json["price"],
    description: json["description"],
    dateAdded: DateTime.parse(json["date_added"]),
    categories: json["categories"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "amount": amount,
    "price": price,
    "description": description,
    "date_added": "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
    "categories": categories,
  };
}