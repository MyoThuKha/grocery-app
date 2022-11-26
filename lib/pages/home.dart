import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/item_card.dart';
import 'package:grocery_app/modals/item.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/cart");
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag_rounded),
      ),

      //Widget
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
              child: Divider(
                thickness: 1,
              ),
            ),

            const SizedBox(height: 24),

            //Items
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: Text("Fresh Items"),
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                itemCount: context.watch<ItemModel>().shopItems.length,
                itemBuilder: ((context, index) {
                  List item = context.watch<ItemModel>().shopItems;
                  return ItemCard(
                    title: item[index][0],
                    price: item[index][1],
                    image: item[index][2],
                    color: item[index][3],
                    addItem: (() {
                      context.read<ItemModel>().addItems(index);
                    }),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
