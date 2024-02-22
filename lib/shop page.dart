import 'package:cafe_menu/c_shop.dart';
import 'package:cafe_menu/coffee.dart';
import 'package:cafe_menu/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MaterialApp(home: ShopPage(),));
}

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee){
  Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);
  }
  @override
  Widget build(BuildContext context) {
    var value;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [

            const Text("How would you like your coffee?",
              style: TextStyle(fontSize: 20),),
            const SizedBox(height: 25),
            //list of coffee to buy
            Expanded(child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context,index){
            //get individual coffee
              Coffee eachCoffee=value.coffeeShop[index];
            //return thetile for this coffee
              return CoffeeTile(
                coffee: eachCoffee,
              icon: Icon(Icons.add),
              onPressed:()=> addToCart(eachCoffee),);
            }
            ))
          ],
        ),
      ),
    );
  }
}
