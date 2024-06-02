import 'package:flutter/material.dart';
import 'package:news_reading/ui/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
              scrolledUnderElevation: 0.0,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent)),
      scrollBehavior: const ScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'News Info',
      home: const HomeScreen(),
    );
  }
}
