import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle, size: 30),
                SizedBox(width: 12),
                Text(
                  'Wyszukaj',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            Icon(Icons.camera_alt_outlined, size: 25),
          ],
        ),
      ),
    );
  }
}
