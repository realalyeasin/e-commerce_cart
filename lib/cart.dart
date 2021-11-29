import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text('Carts', style: TextStyle(color: Colors.black, letterSpacing: 3),),
      ),
      body: Center(
        child: Text('ALL ADDED PRODUCTS ARE HERE', style: TextStyle(color: Colors.amberAccent, letterSpacing: 3),),
      ),
    );
  }
}
