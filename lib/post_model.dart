import 'package:flutter/foundation.dart';

class Product {
  final int id;
  final String name;
   final String? description;
  final double price;
  final int stock;


  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.description
  });

   factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: double.parse(json['price'].toString()),
      stock: json['stock']
      
    );
  }

}