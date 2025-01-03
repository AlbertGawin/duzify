import 'package:duzify/domain/search/entities/external_urls.dart';
import 'package:duzify/domain/search/entities/image.dart';
import 'package:duzify/domain/search/entities/owner.dart';
import 'package:duzify/domain/search/entities/playlist_tracks.dart';

class PlaylistEntity {
  final bool collaborative;
  final String description;
  final ExternalUrlsEntity externalUrls;
  final String href;
  final String id;
  final List<ImageEntity> images;
  final String name;
  final OwnerEntity owner;
  final bool public;
  final String snapshotId;
  final PlaylistTracksEntity tracks;
  final String type;
  final String uri;

  const PlaylistEntity({
    required this.collaborative,
    required this.description,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.owner,
    required this.public,
    required this.snapshotId,
    required this.tracks,
    required this.type,
    required this.uri,
  });
}
