import 'package:assignment_app/cart_page.dart';
import 'package:assignment_app/model/product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int initialCount = 0;
List<Product> products = [
  Product(
    name: 'Shirt',
    price: 200,
  ),
  Product(
    name: 'Pant',
    price: 200,
  ),
  Product(
    name: 'Bag',
    price: 200,
  ),
  Product(
    name: 'Belt',
    price: 200,
  ),
  Product(
    name: 'Wallet',
    price: 200,
  ),
  Product(
    name: 'Tshirt',
    price: 200,
  ),
  Product(
    name: 'Shorts',
    price: 200,
  ),
  Product(
    name: 'Shoes',
    price: 200,
  ),
  Product(
    name: 'Socks',
    price: 200,
  ),
  Product(
    name: 'Jacket',
    price: 200,
  ),
];
List<String> cart = [];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 8.0,
                        left: 14.0,
                        right: 14.0,
                        bottom: 6.0,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          12.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].name,
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Price: ${products[index].price.toString()}',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                  'Total product: ${products[index].counter.toString()}'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                products[index].counter++;

                                products[index].counter == 5
                                    ? showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: Text('Congratulations!'),
                                          content: Text(
                                              'You\'ve bought 5 ${products[index].name}!'),
                                          actions: <Widget>[
                                            TextButton(
                                              child: Text(
                                                'Okay',
                                                style: TextStyle(
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      )
                                    : null;
                                cart.contains(products[index].name)
                                    ? null
                                    : cart.add(products[index].name);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 8.0,
                              ),
                              child: Text(
                                'Buy now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(
                      cart: cart,
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 12.0,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                  child: Text(
                    'Go To Cart Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ))
            ],
          )
        ],
      )),
    );
  }
}
