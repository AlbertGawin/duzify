import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TrackImage extends StatelessWidget {
  final String imageUrl;
  final String thumbnailUrl;

  const TrackImage({
    super.key,
    required this.imageUrl,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 368,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(8),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        fadeInDuration: Duration(milliseconds: 200),
        placeholder: (context, url) => ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: CachedNetworkImage(
            imageUrl: thumbnailUrl,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 0),
          ),
        ),
      ),
    );
  }
}
