import 'package:duzify/domain/search/entities/tracks.dart';
import 'package:duzify/presentation/search/widgets/track_tile.dart';
import 'package:flutter/material.dart';

class TracksList extends StatefulWidget {
  final TracksEntity tracks;

  const TracksList({super.key, required this.tracks});

  @override
  State<TracksList> createState() => _TracksListState();
}

class _TracksListState extends State<TracksList> {
  late List<Image> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: widget.tracks.items.length,
      itemBuilder: (context, index) {
        final track = widget.tracks.items[index];
        return TrackTile(track: track, thumbnail: images[index]);
      },
    );
  }

  @override
  void didChangeDependencies() {
    images = widget.tracks.items.map((track) {
      final image = Image.network(track.album.images.last.url);
      precacheImage(image.image, context);
      return image;
    }).toList();

    super.didChangeDependencies();
  }
}
