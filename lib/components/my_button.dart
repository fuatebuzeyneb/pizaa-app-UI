import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const MyButtom({super.key, required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFC1AC95),
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF483434),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward,
              color: Color(0xFF483434),
            )
          ],
        ),
      ),
    );
  }
}
