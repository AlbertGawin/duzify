import 'package:duzify/domain/search/entities/playlist_tracks.dart';

class PlaylistTracksModel extends PlaylistTracksEntity {
  const PlaylistTracksModel({
    required super.href,
    required super.total,
  });

  factory PlaylistTracksModel.fromJson(Map<String, dynamic> json) {
    return PlaylistTracksModel(
      href: json['href'],
      total: json['total'],
    );
  }
}
