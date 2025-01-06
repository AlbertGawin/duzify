import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String title;
  final String text;

  const ErrorMessage({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              color: AppColors.white,
              size: 32,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
