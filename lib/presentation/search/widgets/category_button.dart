import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appBarBackground,
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
