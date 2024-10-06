import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myBottomNavBar extends StatelessWidget {
  myBottomNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 48),
          color: Colors.grey[600],
          activeColor: Colors.grey[900],
          tabActiveBorder:
              Border.all(color: const Color.fromARGB(255, 243, 235, 235)),
          tabBackgroundColor: const Color.fromARGB(255, 243, 235, 235),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 12,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
            )
          ]),
    );
  }
}
