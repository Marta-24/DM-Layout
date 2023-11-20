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
        _buildStat(title: 'Reads', value: reads),
        _buildVerticalLine(),
        _buildStat(title: 'Likes', value: likes),
        _buildVerticalLine(),
        _buildStat(title: 'Episodes', value: episodes),
      ],
    );
  }

  Widget _buildStat({required String title, required int value}) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildVerticalLine() {
    return Container(
      height: 40, // Adjust the height as needed
      width: 1,
      color: Colors.white,
    );
  }
}