import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/components/food_title.dart';
import 'package:pizza_app/models/m_food.dart';
import 'package:pizza_app/pages/food_details_page.dart';

import '../components/my_button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    ModelFood(
        name: 'Mix Pizza',
        price: '20',
        imagePath: 'assets/images/pizza7.png',
        rating: '4.8',
        description:
            'is an expression that can refer to a combination of different pizza ingredients bundled together in one package. This package will usually contain all the basic ingredients you need to make a pizza at home, such as pre-made pizza crust, tomato sauce, and cheese, and sometimes may include additional toppings such as sausage, olives, peppers, or mushrooms.'),
    ModelFood(
        name: 'Chili Pizza',
        price: '18',
        imagePath: 'assets/images/pizza8.png',
        rating: '4.7',
        description:
            'Chili Pizza is a fusion of two well-loved comfort dishes, combining the essence of delicious pizza with the rich, spicy flavors of Chili.The hallmark of chili pizza is the toppings of the filling. Instead of the usual tomato sauce, our chili pizza is topped with a generous layer of chili mixture.'),
    ModelFood(
        name: 'Olive Pizza',
        price: '16',
        imagePath: 'assets/images/pizza11.png',
        rating: '4.9',
        description:
            'The main and prominent ingredient in olive pizza is olives. It is topped with a generous amount of sliced ​​olives, which usually come in different colors like green and black. Olives impart a delicious flavor and unique texture to pizza, making it a special experience for olive lovers.'),
    ModelFood(
        name: 'Onion Pizza',
        price: '21',
        imagePath: 'assets/images/pizza12.png',
        rating: '4.6',
        description:
            'The main ingredient in onion pizza is onions. Onions are cut into thin slices or rings and placed on top of the pizza. Onions give off a distinctive, pleasant flavor and delicious texture when roasted and softened during the baking process. The onions used in the pizza may be red, white, or green onions, depending on personal preference.'),
    ModelFood(
        name: 'Meat Pizza',
        price: '25',
        imagePath: 'assets/images/pizza13.png',
        rating: '4.9',
        description:
            'Meat forms the main part of a meat pizza, and it can contain different types of meat. For example, ground beef (beef, chicken, or lamb) could be the main ingredient. Sausage slices or pepperoni slices can also be added to add extra flavor and texture.'),
    ModelFood(
        name: 'Cheese Pizza',
        price: '22',
        imagePath: 'assets/images/pizza15.png',
        rating: '4.8',
        description:
            'The main ingredient in cheese pizza is cheese, and the types of cheese often used include mozzarella and cheddar cheese. Parmesan, feta, or other types of cheese can also be used, depending on personal preference. Cheese can be grated and spread generously on top of the pizza, resulting in a thick, chewy, melty cheese layer.'),
  ];

  void navigateToFoodDetails(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodDetalisPage(
                  food: foodMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFAF6),
      appBar: AppBar(
        foregroundColor: const Color(0xFF483434),
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text(
          'Pizzeria',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFDFAF6),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF483434),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(15),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Discounts of 50%',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyButtom(
                          onTap: () {},
                          title: 'Let\'s Go',
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/pizza2.png',
                      height: 130,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF483434),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF483434),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search here..'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Food Menu',
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 18,
                    color: const Color(0xFF483434),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTitle(
                  onTap: () => navigateToFoodDetails(index),
                  food: foodMenu[index],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF483434),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(15),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/pizza16.png',
                      height: 100,
                    ),
                    Column(
                      children: [
                        Text(
                          'Pizzeria Everywhere',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
