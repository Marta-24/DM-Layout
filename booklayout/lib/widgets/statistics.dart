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
            const Text("Reads", 
            style: TextStyle(fontFamily: 'PatrickHandSC',)),
            Text(reads.toString()),
          ],
        ),
        Column(
          children: [
            const Text("Likes", style: TextStyle(fontFamily: 'PatrickHandSC',)),
            Text(likes.toString()),
          ],
        ),
        Column(
          children: [
            const Text("Episodes", style: TextStyle(fontFamily: 'PatrickHandSC',)),
            Text(episodes.toString()),
          ],
        ),
      ],
    );
  }
}