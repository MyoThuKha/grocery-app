import 'package:flutter/material.dart';
import 'package:grocery_app/pages/intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Intro(),
    ),
  );
}
