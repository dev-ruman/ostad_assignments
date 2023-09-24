import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int initialCount = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Count:',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$initialCount',
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        initialCount++;
                        initialCount >= 5
                            ? showDialog(
                                context: context,
                                builder: (BuildContext context) => Dialog(
                                      child: Container(
                                        height: 250,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 14.0,
                                          vertical: 12.0,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Button pressed ${initialCount} times.',
                                              style: TextStyle(
                                                color: Colors.grey[900],
                                                fontSize: 22,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 40,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 6.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey[900],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          12.0,
                                                        )),
                                                    child: const Text(
                                                      'CLOSE',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ))
                            : null;
                      });
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 32,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        initialCount > 0 ? initialCount-- : null;
                      });
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
