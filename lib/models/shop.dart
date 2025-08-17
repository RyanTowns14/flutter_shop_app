import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{

  // products for sale
  final List<Product> _shop = [
   // product 1
    Product(
      name: "Porsche Hoodie", 
      description: "Premium Porsche hoodie that may break the bank.", 
      imagePath: 'assets/Hoodie.jpeg', 
      price: 215.00,
    ),

    // product 2
    Product(
      name: "Nike Dunk Highs", 
      description: "Become the coolest kid in class.", 
      imagePath: 'assets/Shoes.jpeg', 
      price: 160.00,
    ),

    // product 3
    Product(
      name: "Sunski Baia Sunglasses", 
      description: "Perfect sunglasses for chilling on the beach.", 
      imagePath: 'assets/Sunglasses.jpeg', 
      price: 120.00,
    ),

    // product 4
    Product(
      name: "Time Teller Watch", 
      description: "Stay looking fresh while telling time.", 
      imagePath: 'assets/Watch.jpeg', 
      price: 112.50,
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}