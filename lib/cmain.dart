import 'package:cafe_menu/c_shop.dart';
import 'package:cafe_menu/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>CoffeeShop(),
    builder: (context,child)=>const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CafeHome(),
    ),);
  }
}
