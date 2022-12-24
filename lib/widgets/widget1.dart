import 'package:flutter/material.dart';

import 'main_page.dart';

class TexField extends StatelessWidget {
  const TexField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Column(
                children: [
                  Card(
                    color: Color(0xFF393938),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back),
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
                  ),
                  SizedBox(
                    height: 130,
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF393938),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked,
                              color: Color(0xFF85EED0),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'Your location',
                                    labelStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.clear,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.amber,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Add waypoint',
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.clear,
                              color: Color(0xFF393938),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Samarkand',
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.clear,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
