import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Słuchaj tego, co lubisz',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Wyszukaj wykonawców, utwory, podcasty i nie tylko.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.lightGray,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
