import 'package:flutter/material.dart';
import 'package:news_reading/ui/home_screen.dart';
import 'package:news_reading/widget/custom_bottom_navigation_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              iconSize: 30,
              color: Colors.black,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
                iconSize: 30,
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
                iconSize: 30,
                color: Colors.black,
              ),
            ],
          ),
          body: const HomeScreen(),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}
