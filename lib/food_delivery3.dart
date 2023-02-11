import 'package:untitled1/profile.dart';
import 'package:flutter/material.dart';

import 'profile.dart';
import 'food_delivery2.dart';
import 'home.dart';


class FoodDesign3 extends StatefulWidget {
  @override
  State<FoodDesign3> createState() => _FoodDesign3State();
}

class _FoodDesign3State extends State<FoodDesign3> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 249, 246),
        body: IndexedStack(
          index: index,
          children: [
            Home(),
            FoodDelivery2(),
            Profile(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          // selectedItemColor: Color.fromARGB(255, 254, 192, 4),
          fixedColor: Color.fromARGB(255, 254, 192, 4),
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
    );
  }
}
