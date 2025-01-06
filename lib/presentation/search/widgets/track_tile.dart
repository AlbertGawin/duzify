import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/domain/search/entities/track.dart';
import 'package:duzify/presentation/track_player/pages/track_player.dart';
import 'package:flutter/material.dart';

class TrackTile extends StatefulWidget {
  final TrackEntity track;
  final Image thumbnail;

  const TrackTile({
    super.key,
    required this.track,
    required this.thumbnail,
  });

  @override
  State<TrackTile> createState() => _TrackTileState();
}

class _TrackTileState extends State<TrackTile> {
  bool _isLoading = false;

  Future<void> _handleTap() async {
    setState(() {
      _isLoading = true;
    });

    final image = Image.network(widget.track.album.images.first.url);
    await precacheImage(image.image, context);

    if (mounted) {
      setState(() {
        _isLoading = false;
      });

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TrackPlayerPage(
            track: widget.track,
            preloadedImage: image,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: _isLoading ? null : _handleTap,
      dense: true,
      contentPadding: const EdgeInsets.only(left: 16, right: 0),
      leading: SizedBox(
        width: 48,
        height: 48,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: widget.thumbnail,
        ),
      ),
      title: Text(
        widget.track.name,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.white,
              letterSpacing: 0,
              fontSize: 15,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${widget.track.type == "track" ? "Utwór" : "Inne"} • ${widget.track.artists.map((artist) => artist.name).join(', ')}',
        style: TextStyle(
          color: AppColors.lightGray,
          fontSize: 12,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.more_vert,
          color: AppColors.lightGray,
          size: 24,
        ),
        onPressed: () {},
      ),
    );
  }
}
