import 'package:cafe_menu/c_shop.dart';
import 'package:cafe_menu/coffee.dart';
import 'package:cafe_menu/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MaterialApp(home: CartPage(),));
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemToCart(coffee);
  }
  @override
  Widget build(BuildContext context) {
    var value;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: [
        //heading
      Text("Your cart",style: TextStyle(fontSize: 20),),
        
        //list of cart
        
        Expanded(child: ListView.builder(
            itemCount: value.userCart.length,
            itemBuilder: (context,index){
          Coffee eachCoffee=value.userCart[index];
          return CoffeeTile(coffee: eachCoffee,
              onPressed: ()=>removeFromCart(eachCoffee),
              icon: Icon(Icons.delete));
        }))
     ],
      ),
    );
  }
}
