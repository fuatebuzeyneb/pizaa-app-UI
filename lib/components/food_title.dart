import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/m_food.dart';

class FoodTitle extends StatelessWidget {
  final ModelFood food;
  final void Function()? onTap;
  const FoodTitle({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0x33483434),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(right: 10, left: 15),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              food.imagePath,
              height: 140,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 20,
                  color: const Color(0xFF483434),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${food.price}',
                    style: GoogleFonts.dmSerifDisplay(
                        color: const Color(0xFF483434),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Text(
                        food.rating,
                        style: GoogleFonts.dmSerifDisplay(
                            color: const Color(0xFF483434),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
