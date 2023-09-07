import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 70,
        shadowColor: Colors.black,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Home'),
        leading: const Icon(Icons.add_business),
        actions: const [
          Icon(Icons.search),
        ],
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is mod 5 Assignment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'My',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'phone',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'name',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'is Oppo A92',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.orange,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
