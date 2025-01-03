import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/owner.dart';
import 'package:duzify/data/search/models/playlist_tracks.dart';

class PlaylistModel {
  final bool collaborative;
  final String description;
  final ExternalUrlsModel externalUrls;
  final String href;
  final String id;
  final List<ImageModel> images;
  final String name;
  final OwnerModel owner;
  final bool public;
  final String snapshotId;
  final PlaylistTracksModel tracks;
  final String type;
  final String uri;

  const PlaylistModel({
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

  factory PlaylistModel.fromJson(Map<String, dynamic> json) {
    return PlaylistModel(
      collaborative: json['collaborative'],
      description: json['description'],
      externalUrls: ExternalUrlsModel.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageModel>.from(
        json['images'].map((x) => ImageModel.fromJson(x)),
      ),
      name: json['name'],
      owner: OwnerModel.fromJson(json['owner']),
      public: json['public'],
      snapshotId: json['snapshot_id'],
      tracks: PlaylistTracksModel.fromJson(json['tracks']),
      type: json['type'],
      uri: json['uri'],
    );
  }
}
