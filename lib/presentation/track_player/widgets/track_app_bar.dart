import 'package:flutter/material.dart';

class TrackAppBar extends StatelessWidget {
  final String title;

  const TrackAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: statusBarHeight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 36,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, size: 28),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
