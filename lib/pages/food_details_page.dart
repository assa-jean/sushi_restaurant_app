import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

import '../models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  //qty
  int quantityCount = 0;

  //decrement
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  //increment
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 45, 45),
      ),
      body: Column(
        children: [
          //listview of food details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  const SizedBox(height: 10),
                  //image
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  const SizedBox(height: 25),
                  //rating
                  Row(
                    children: [
                      //star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                      ),
                      const SizedBox(width: 5),
                      //raing
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 10),

                  //food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 30),
                  ),

                  const SizedBox(height: 25),
                  //Food description
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice, Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice.Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice.Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice.",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  )
                ],
              ),
            ),
          ),

          //price + qte + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //price + quantity
                Row(
                  children: [
                    Text(
                      "\$" + widget.food.price,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    //qte
                    Row(
                      children: [
                        //qte minus button
                        Container(
                          decoration: BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: decrementQuantity),
                        )

                        //qty count

                        //plus button
                      ],
                    )
                  ],
                )

                //add to cart button
              ],
            ),
          )
        ],
      ),
    );
  }
}
