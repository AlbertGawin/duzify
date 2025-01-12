import 'package:duzify/domain/search/entities/track.dart';
import 'package:duzify/presentation/track_player/widgets/track_app_bar.dart';
import 'package:duzify/presentation/track_player/widgets/track_controlls.dart';
import 'package:duzify/presentation/track_player/widgets/track_image.dart';
import 'package:duzify/presentation/track_player/widgets/track_info.dart';
import 'package:duzify/presentation/track_player/widgets/track_slider.dart';
import 'package:flutter/material.dart';

class TrackPlayerPage extends StatelessWidget {
  final TrackEntity track;

  const TrackPlayerPage({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TrackAppBar(title: track.album.name),
            const SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  TrackImage(
                    imageUrl: track.album.images.first.url,
                    thumbnailUrl: track.album.images.last.url,
                  ),
                  const SizedBox(height: 64),
                  TrackInfo(
                    title: track.name,
                    artists:
                        track.artists.map((artist) => artist.name).join(', '),
                    explicit: track.explicit,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: TrackSlider(durationMs: track.durationMs),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: const TrackControlls(),
            ),
          ],
        ),
      ),
    );
  }
}
