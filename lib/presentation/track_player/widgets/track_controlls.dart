import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TrackControlls extends StatelessWidget {
  const TrackControlls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.shuffle),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.skip_previous, size: 48),
              onPressed: () {},
            ),
            SizedBox(width: 16),
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(
                  Icons.play_arrow,
                  size: 40,
                  color: AppColors.darkGray,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 16),
            IconButton(
              icon: const Icon(Icons.skip_next, size: 48),
              onPressed: () {},
            ),
          ],
        ),
        Icon(Icons.repeat),
      ],
    );
  }
}
