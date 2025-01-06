import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/domain/search/entities/track.dart';
import 'package:flutter/material.dart';

class TrackTile extends StatelessWidget {
  final TrackEntity track;
  final Image preloadedImage;

  const TrackTile({
    super.key,
    required this.track,
    required this.preloadedImage,
  });

  @override
  Widget build(BuildContext context) {
    // final image = Image.network(track.album.images.first.url);
    // precacheImage(image.image, context);

    return ListTile(
      onTap: () async {
        // showModalBottomSheet(
        //   isScrollControlled: true,
        //   context: context,
        //   builder: (BuildContext context) {
        //     return TrackPlayerPage(track: track);
        //   },
        // );

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => TrackPlayerPage(
        //       track: track,
        //       preloadedImage: image,
        //     ),
        //   ),
        // );
      },
      contentPadding: const EdgeInsets.only(left: 16, right: 0),
      leading: SizedBox(
        width: 48,
        height: 48,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: preloadedImage,
        ),
      ),
      title: Text(
        track.name,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.white,
              letterSpacing: 0,
              fontSize: 15,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${track.type == "track" ? "Utwór" : "Inne"} • ${track.artists.map((artist) => artist.name).join(', ')}',
        style: TextStyle(
          color: AppColors.lightGray,
          fontSize: 12,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: AppColors.lightGray,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: AppColors.lightGray,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
