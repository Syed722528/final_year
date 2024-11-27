import 'package:final_year/screens/first_page.dart';
import 'package:final_year/screens/home_page.dart';
import 'package:final_year/screens/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        'first_page' : (context)=> const FirstPage(),
        'home_page': (context)=> const HomePage(),
        'profile_page': (context)=> const ProfilePage(),
      },
    );
  }
}
