import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final dynamic color;
  final VoidCallback addItem;
  const ItemCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.color,
    required this.addItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //Image
              Image.asset(
                image,
                height: 64,
              ),

              //title
              Text(title),

              //price
              GestureDetector(
                onTap: () => addItem(),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                      color: color[800],
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    '\$ $price',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
