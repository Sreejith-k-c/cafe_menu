import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavigation({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value)=>onTabChange!(value),
          color: Colors.grey,
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey,
          tabBackgroundColor: Colors.grey,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: [
          GButton(icon: Icons.home,text: 'Shop'),
          GButton(icon: Icons.shopping_cart,text: 'cart')
        ]),
    );
  }
}
