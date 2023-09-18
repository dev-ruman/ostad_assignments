import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'A Warm Welcome !',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search for photos..',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                height: 350,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 4 / 6,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('Photo Clicked'),
                                  behavior: SnackBarBehavior.floating,
                                ));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.pexels.com/photos/2361952/pexels-photo-2361952.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Autumn cat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Photo Clicked'),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.pexels.com/photos/2173872/pexels-photo-2173872.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Brown cat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Photo Clicked'),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Baby cat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Photo Clicked'),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.pexels.com/photos/121920/pexels-photo-121920.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Sleepy cat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Photo Clicked'),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.pexels.com/photos/1317844/pexels-photo-1317844.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Sneaky cat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Photo Clicked'),
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://images.pexels.com/photos/2524164/pexels-photo-2524164.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Dark cat',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 210,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Pran Milk'),
                      leading: Image.asset('assets/images/uht.webp'),
                      subtitle: Text('Pran Full cream pasturized milk'),
                    ),
                    ListTile(
                      title: Text('Uht Milk'),
                      leading: Image.asset('assets/images/pran.webp'),
                      subtitle: Text('Pran UHT milk'),
                    ),
                    ListTile(
                      title: Text('Diploma'),
                      leading: Image.asset('assets/images/diploma.webp'),
                      subtitle: Text('Diploma milk powder'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Photos Uploaded Successfully!'),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Icon(
                          Icons.upload_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
