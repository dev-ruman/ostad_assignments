import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<String> cart;
  const CartPage({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
        title: Text('Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total type of products:',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 22,
              ),
            ),
            Text(
              '${cart.length.toString()}',
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
