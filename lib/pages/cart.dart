import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/modals/item.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 106,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      //
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                "My Cart",
                textAlign: TextAlign.start,
                style: GoogleFonts.playfairDisplay(
                    textStyle: const TextStyle(fontSize: 40)),
              ),
            ),

            //items
            Expanded(
              child: ListView.builder(
                  itemCount: context.watch<ItemModel>().userItems.length,
                  itemBuilder: (context, index) {
                    List item = context.watch<ItemModel>().userItems[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                      child: ListTile(
                        leading: Image.asset(item[2]),
                        title: Text(item[0]),
                        subtitle: Text(item[1]),
                        trailing: IconButton(
                            onPressed: () {
                              context.read<ItemModel>().removeItems(index);
                            },
                            icon: const Icon(Icons.cancel)),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
