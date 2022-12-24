import 'package:flutter/material.dart';

import 'widgets/widget2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF1B1B1B)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF1B1B1B),
        body: SafeArea(
          child: NewWidget(),
        ),
      ),
    );
  }
}
