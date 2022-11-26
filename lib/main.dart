import 'package:flutter/material.dart';
import 'package:grocery_app/modals/item.dart';
import 'package:grocery_app/pages/intro.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_) => ItemModel())),
      ],
      child: MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: const Intro(),
      ),
    ),
  );
}
