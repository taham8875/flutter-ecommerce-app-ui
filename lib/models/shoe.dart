import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/data/shoes.dart';

class Shoe extends ChangeNotifier {
  final int id;
  final String name;
  final String picture;
  final double price;
  final String description;

  Shoe(
      {this.id = 0,
      this.name = '',
      this.picture = '',
      this.price = 0.0,
      this.description = ''});

  List<Shoe> getShoes() {
    return List<Shoe>.from(shoes.map((shoe) => Shoe(
          name: shoe['name'] as String,
          picture: shoe['picture'] as String,
          price: shoe['price'] as double,
          description: shoe['description'] as String,
        )));
  }

  void addShoe(Shoe shoe) {
    shoes.add({
      'id': shoes.length + 1,
      'name': shoe.name,
      'picture': shoe.picture,
      'price': shoe.price,
      'description': shoe.description,
    });
    notifyListeners();
  }

  void removeShoe(int id) {
    shoes.removeWhere((element) => element['id'] == id);
    notifyListeners();
  }

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      name: json['name'],
      picture: json['picture'],
      price: json['price'],
      description: json['description'],
    );
  }
}
