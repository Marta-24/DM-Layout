import 'package:flutter/material.dart';

class BookDescription extends StatelessWidget {
  final String title;
  final String description;

  const BookDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Text(description, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}