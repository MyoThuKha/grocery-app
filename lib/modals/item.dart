import 'package:flutter/material.dart';

class ItemModel extends ChangeNotifier {
  //itemName,itemPrice,imagePath,color
  final List _items = [
    ["avocado", "4.00", "images/avocado.png", Colors.green],
    ["banana", "4.00", "images/banana.png", Colors.yellow],
    ["chicken", "4.00", "images/chicken.png", Colors.brown],
    ["water", "4.00", "images/water.png", Colors.blue],
  ];

  get shopItems => _items;
}
