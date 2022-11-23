import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 120.0, 80.0, 40.0),
              child: Image.asset("images/avocado.png"),
            ),
            Text("We deliver groceries at your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            const Text(
              "Fresh Items everyday",
            ),
            const Spacer(),
            //Button
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
