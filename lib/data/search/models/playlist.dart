import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image.dart';
import 'package:duzify/data/search/models/owner.dart';
import 'package:duzify/data/search/models/playlist_tracks.dart';
import 'package:duzify/domain/search/entities/playlist.dart';

class PlaylistModel extends PlaylistEntity {
  const PlaylistModel({
    required super.collaborative,
    required super.description,
    required super.externalUrls,
    required super.href,
    required super.id,
    required super.images,
    required super.name,
    required super.owner,
    required super.public,
    required super.snapshotId,
    required super.tracks,
    required super.type,
    required super.uri,
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
