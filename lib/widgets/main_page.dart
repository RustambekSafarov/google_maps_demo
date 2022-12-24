// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_demo/main.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'lib/img/Screenshot.png',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp(),
                              ));
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.explore,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_searching,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.zoom_out_map,
                            size: 30,
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF262626),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        child: Icon(Icons.home),
                        backgroundColor: Color(0xFF393938),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.work),
                        backgroundColor: Color(0xFF393938),
                      ),
                      Text(
                        'Work',
                        style: TextStyle(color: Colors.white),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.star_rate),
                        backgroundColor: Color(0xFF393938),
                      ),
                      Text(
                        'Places',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: Color(0xFF393938),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.restaurant),
                              onPressed: () {
                                print('clicked');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainPage(),
                                  ),
                                );
                              },
                            ),
                            Text('Food')
                          ],
                        ),
                      ),
                      Card(
                        color: Color(0xFF393938),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.medical_services),
                              onPressed: () {
                                print('clicked');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainPage(),
                                  ),
                                );
                              },
                            ),
                            Text('Health')
                          ],
                        ),
                      ),
                      Card(
                        color: Color(0xFF393938),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: [
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.shop),
                              onPressed: () {
                                print('clicked');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainPage(),
                                  ),
                                );
                              },
                            ),
                            Text('Shopping')
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
