import 'package:flutter/material.dart';

class ItemModel extends ChangeNotifier {
  //itemName,itemPrice,imagePath,color
  final List _items = [
    ["avocado", "4.00", "images/avocado.png", Colors.green],
    ["banana", "4.00", "images/banana.png", Colors.yellow],
    ["chicken", "4.00", "images/chicken.png", Colors.brown],
    ["water", "4.00", "images/water.png", Colors.blue],
  ];

  final List _userItems = [];

  void addItems(int index) {
    _userItems.add(_items[index]);
  }

  void removeItems(int index) {
    _userItems.remove(_userItems[index]);
    notifyListeners();
  }

  String getTotal() {
    double result = 0;
    for (int i = 0; i < _userItems.length; i++) {
      result += double.parse(_userItems[i][1]);
    }
    return result.toString();
  }

  get shopItems => _items;
  get userItems => _userItems;
}
