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
                '#trending $trending',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'PatrickHandSC',
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PatrickHandSC',
                ),
              ),
              Text(
                'by $writer\nPublished on $publishedDate',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: 'PatrickHandSC',
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