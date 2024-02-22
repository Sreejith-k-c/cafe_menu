import 'package:cafe_menu/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{

  // coffee for sale list
  final List<Coffee> _shop=[
    //black coffee
    Coffee(name: 'Long black',
           price: "25",
           imagepath: ""),
    //latte
    Coffee(name: 'latte',
        price: "30",
        imagepath: ""),
    //espresso
    Coffee(name: 'espresso',
        price: "40",
        imagepath: ""),
    //iced coffee
    Coffee(name: 'iced coffee',
        price: "50",
        imagepath: ""),
  ];

  // user cart
  List<Coffee> _userCart=[];

  // get coffee list
  List<Coffee>get coffeeShop=>_shop;

  //get user cart
  List<Coffee>get userCart=>_userCart;
  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  //remove item from cart
  void removeItemToCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}