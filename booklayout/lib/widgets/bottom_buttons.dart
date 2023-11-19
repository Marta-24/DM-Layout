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
          child: Text("Read Book"),
        ),
        ElevatedButton(
          onPressed: onPlayPressed,
          child: Text("Play Book"),
        ),
      ],
    );
  }
}