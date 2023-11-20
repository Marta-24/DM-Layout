import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isLiked;
  final VoidCallback onHeartPressed;

  const TopBar({
    Key? key,
    required this.isLiked,
    required this.onHeartPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Book Detail'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : null,
          ),
          onPressed: onHeartPressed,
        ),
      ],
    );
  }
}