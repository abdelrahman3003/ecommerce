import 'package:ecommerce/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    StorreApp(),
  );
}

class StorreApp extends StatelessWidget {
  const StorreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        const Home().id: (context) => const Home(),
      },
    );
  }
}
