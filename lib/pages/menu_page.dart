import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        title: Text(
          "Tokyo",
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 138, 60, 55),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    const Text("Get 30%  Promo"),
                    MyButton(text: "Redeem", onTap: () {})
                  ],
                )
              ],
            ),
          )
          //search bar

          //menu list

          //popular food
        ],
      ),
    );
  }
}
