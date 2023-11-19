import 'package:flutter/material.dart';

class BookInformation extends StatelessWidget {
  final String imageUrl;
  final String trending;
  final String title;
  final String writer;
  final String publishedDate;

  const BookInformation({
    Key? key,
    required this.imageUrl,
    required this.trending,
    required this.title,
    required this.writer,
    required this.publishedDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image of the book
        Image.network(
          imageUrl,
          width: 100,
          height: 150,
          fit: BoxFit.cover,
        ),
        // #Trending, Book Title, Writer, Published Date
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("#$trending Trending"),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("By $writer"),
            Text("Published: $publishedDate"),
          ],
        ),
      ],
    );
  }
}