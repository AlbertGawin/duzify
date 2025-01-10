import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/domain/search/entities/track.dart';
import 'package:duzify/presentation/track_player/widgets/track_image.dart';
import 'package:flutter/material.dart';

class TrackPlayerPage extends StatelessWidget {
  final TrackEntity track;

  const TrackPlayerPage({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: statusBarHeight + 4,
        ),
        child: Column(
          children: [
            Row(
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
            const SizedBox(height: 64),
            TrackImage(
              imageUrl: track.album.images.first.url,
              thumbnailUrl: track.album.images.last.url,
            ),
            const SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      track.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      track.artists.map((artist) => artist.name).join(', '),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.lightGray,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.add_circle_outline, size: 36),
              ],
            ),
            const SizedBox(height: 32),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 2,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
                trackShape: RoundedRectSliderTrackShape(),
              ),
              child: Column(
                children: [
                  Slider(
                    value: 0.5,
                    onChanged: (value) {},
                    activeColor: AppColors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0:00',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.lightGray,
                        ),
                      ),
                      Text(
                        '3:30',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.lightGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.shuffle),
                  onPressed: () {},
                ),
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
                IconButton(
                  icon: const Icon(Icons.repeat),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
