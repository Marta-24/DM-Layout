import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onHeartPressed;

  const TopBar({Key? key, required this.onHeartPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Book Detail'),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite, color: Colors.red),
          onPressed: onHeartPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}