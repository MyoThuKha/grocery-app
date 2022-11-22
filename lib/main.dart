import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'display',
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  );
}
