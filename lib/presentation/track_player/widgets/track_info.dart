import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/presentation/track_player/widgets/marquee_text.dart';
import 'package:flutter/material.dart';

class TrackInfo extends StatelessWidget {
  final String title;
  final String artists;
  final bool explicit;

  const TrackInfo({
    super.key,
    required this.title,
    required this.artists,
    required this.explicit,
  });

  @override
  Widget build(BuildContext context) {
    final double availableWidth = MediaQuery.of(context).size.width - 120;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: availableWidth,
              height: 28,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return MarqueeText(
                    text: title,
                    constraints: constraints,
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: AppColors.white,
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                if (explicit)
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'E',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                SizedBox(
                  width: availableWidth,
                  height: 22,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return MarqueeText(
                        text: artists,
                        constraints: constraints,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: AppColors.lightGray,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        Icon(Icons.add_circle_outline, size: 36),
      ],
    );
  }
}
