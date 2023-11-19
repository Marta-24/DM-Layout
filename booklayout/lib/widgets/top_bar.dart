import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isLiked;
  final void Function() onHeartPressed;

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
      title: const Text('Book Detail', style: TextStyle(fontFamily: 'PatrickHandSC',)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: isLiked ? Colors.red : Colors.grey,
          ),
          onPressed: onHeartPressed,
        ),
      ],
    );
  }
}