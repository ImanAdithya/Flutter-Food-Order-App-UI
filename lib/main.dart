import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
       scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/" :(context)=>HomePage(),
      },
    );
  }
}


