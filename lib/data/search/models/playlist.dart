import 'package:duzify/data/search/models/external_urls.dart';
import 'package:duzify/data/search/models/image_object.dart';
import 'package:duzify/data/search/models/owner.dart';
import 'package:duzify/data/search/models/playlist_tracks.dart';

class Playlist {
  final bool collaborative;
  final String description;
  final ExternalUrls externalUrls;
  final String href;
  final String id;
  final List<ImageObject> images;
  final String name;
  final Owner owner;
  final bool public;
  final String snapshotId;
  final PlaylistTracks tracks;
  final String type;
  final String uri;

  const Playlist({
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

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return Playlist(
      collaborative: json['collaborative'],
      description: json['description'],
      externalUrls: ExternalUrls.fromJson(json['external_urls']),
      href: json['href'],
      id: json['id'],
      images: List<ImageObject>.from(
        json['images'].map((x) => ImageObject.fromJson(x)),
      ),
      name: json['name'],
      owner: Owner.fromJson(json['owner']),
      public: json['public'],
      snapshotId: json['snapshot_id'],
      tracks: PlaylistTracks.fromJson(json['tracks']),
      type: json['type'],
      uri: json['uri'],
    );
  }
}
