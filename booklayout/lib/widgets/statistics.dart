import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  final int reads;
  final int likes;
  final int episodes;

  const Statistics({
    Key? key,
    required this.reads,
    required this.likes,
    required this.episodes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text("Reads"),
            Text(reads.toString()),
          ],
        ),
        Column(
          children: [
            Text("Likes"),
            Text(likes.toString()),
          ],
        ),
        Column(
          children: [
            Text("Episodes"),
            Text(episodes.toString()),
          ],
        ),
      ],
    );
  }
}