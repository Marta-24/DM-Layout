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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#$trending On Trending',
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'by $writer\nPublished $publishedDate',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Image.network(
            imageUrl,
            width: 180,
            height: 280,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
