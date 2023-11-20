import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Adjust padding here
            backgroundColor: Colors.grey[900], // Background color
            side: const BorderSide(color: Colors.white),
          ),
          child: const Text(
            "Read Book",
            style: TextStyle(color: Colors.white), // Text color
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Adjust padding here
            backgroundColor: Colors.white, // Background color
            side: const BorderSide(color: Colors.grey),
          ),
          child: Text(
            "Play Book",
            style: TextStyle(color: Colors.grey[900]), // Text color
          ),
        ),
      ],
    );
  }
}