import 'package:duzify/domain/search/entities/tracks.dart';
import 'package:duzify/presentation/search/widgets/track_tile.dart';
import 'package:flutter/material.dart';

class TracksList extends StatelessWidget {
  final TracksEntity tracks;

  const TracksList({super.key, required this.tracks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: tracks.items.length,
      itemBuilder: (context, index) {
        final track = tracks.items[index];
        return TrackTile(track: track);
      },
    );
  }
}
