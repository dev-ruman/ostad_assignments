import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart_rounded),
          SizedBox(
            width: 12.0,
          ),
        ],
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView(
            padding: EdgeInsets.all(12.0),
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.handyman_rounded),
                  title: Text('Machine Service'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text('Computer Service'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.cabin),
                  title: Text('Home Service'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.forest),
                  title: Text('Organic Service'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.power),
                  title: Text('Power Supply'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Air Conditioning'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.mail_outline),
                  title: Text('Postal Service'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  leading: Icon(Icons.data_array),
                  title: Text('Data Solutions'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
