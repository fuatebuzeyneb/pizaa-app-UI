import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/components/my_button.dart';
import 'package:pizza_app/models/m_food.dart';

class FoodDetalisPage extends StatefulWidget {
  final ModelFood food;
  const FoodDetalisPage({super.key, required this.food});

  @override
  State<FoodDetalisPage> createState() => _FoodDetalisPageState();
}

class _FoodDetalisPageState extends State<FoodDetalisPage> {
  int quantityCount = 0;
  int onePrice = 0;

  void decrementQuantityCount() {
    setState(() {
      if (quantityCount <= 0) {
        quantityCount = 0;
        onePrice = 0;
      } else {
        quantityCount--;
        onePrice -= int.parse(widget.food.price);
      }
    });
  }

  void incrementQuantityCount() {
    setState(() {
      if (quantityCount >= 100) {
        quantityCount = 100;
        onePrice = 100 * int.parse(widget.food.price);
      } else {
        quantityCount++;
        onePrice += int.parse(widget.food.price);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFAF6),
      appBar: AppBar(
        elevation: 0,
        foregroundColor: const Color(0xFF483434),
        backgroundColor: const Color(0xFFFDFAF6),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.food.name,
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 28,
                            color: const Color(0xFF483434),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$" + widget.food.price,
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: const Color(0xFF483434),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            widget.food.rating,
                            style: GoogleFonts.dmSerifDisplay(
                                fontSize: 20,
                                color: const Color(0xFF483434),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Description',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 18,
                      color: const Color(0xFF483434),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Text(
                            widget.food.description,
                            style: GoogleFonts.dmSerifDisplay(
                                fontSize: 12,
                                color: const Color(0xFF483434),
                                height: 1.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xFF483434),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Center(
                            child: Text(
                              '\$' + onePrice.toString(),
                              style: GoogleFonts.dmSerifDisplay(
                                fontSize: 20,
                                color: const Color(0xFFC1AC95),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: FloatingActionButton(
                                backgroundColor: const Color(0xFFC1AC95),
                                child: Icon(Icons.remove),
                                onPressed: decrementQuantityCount,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: Center(
                                child: Text(
                                  quantityCount.toString(),
                                  style: GoogleFonts.dmSerifDisplay(
                                    fontSize: 20,
                                    color: const Color(0xFFC1AC95),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              width: 35,
                              child: FloatingActionButton(
                                backgroundColor: const Color(0xFFC1AC95),
                                child: Icon(Icons.add),
                                onPressed: incrementQuantityCount,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: MyButtom(title: 'Add  To Cart', onTap: () {}),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
