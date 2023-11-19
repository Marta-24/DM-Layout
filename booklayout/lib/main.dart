import 'package:flutter/material.dart';
import 'screen/book_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Book App',
      theme: ThemeData(
        // Your app's theme configurations go here
        // For example, colorScheme, fonts, etc.
      ),
      home: const BookScreen(),
    );
  }
}