import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF483434),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              'PIZZA APP',
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/pizza6.png',
              width: 260,
              height: 260,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'The most popular food in Italya',
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Pizza or pizza is a dish of Italian origin made with wheat dough that is usually round, flat and leavened, topped with tomatoes, cheese and many other ingredients and then traditionally baked in a wood-fired oven at a high temperature. It is sometimes called a mini pizza and the person who makes the pizza is known as the pizza maker.',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 35,
            ),
            MyButtom(
              title: 'Go To Pizza',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
