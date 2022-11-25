import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/modals/cart.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 48),

            //Good Morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Good Morning"),
            ),
            const SizedBox(height: 6),

            //Main Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Let's order fresh items for you",
                  style: GoogleFonts.playfairDisplay(
                    textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),

            const SizedBox(height: 24),

            //Items
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Fresh Items"),
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: context.watch<CardModel>().shopItems.length,
                itemBuilder: ((context, index) {
                  return Text(
                      '${context.watch<CardModel>().shopItems[index][0]}');
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
