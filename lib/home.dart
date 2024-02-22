import 'package:flutter/material.dart';
import 'cat page.dart';
import 'nav_bar.dart';
import 'shop page.dart';
void main(){
  runApp(MaterialApp(home: CafeHome(),));
}

class CafeHome extends StatefulWidget {
  const CafeHome({super.key});

  @override
  State<CafeHome> createState() => _CafeHomeState();
}

class _CafeHomeState extends State<CafeHome> {
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  //pages
  final List<Widget> _pages=[

   //shop page
  ShopPage(),
  //cart page
  CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigation(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
