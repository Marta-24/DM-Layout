import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final VoidCallback onReadPressed;
  final VoidCallback onPlayPressed;

  const BottomButtons({
    Key? key,
    required this.onReadPressed,
    required this.onPlayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: onReadPressed,
          child: const Text("Read Book", style: TextStyle(fontFamily: 'PatrickHandSC',)),
        ),
        ElevatedButton(
          onPressed: onPlayPressed,
          child: const Text("Play Book", style: TextStyle(fontFamily: 'PatrickHandSC',)),
        ),
      ],
    );
  }
}