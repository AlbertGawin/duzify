import 'package:duzify/data/search/models/playlist.dart';
import 'package:duzify/domain/search/entities/playlists.dart';

class PlaylistsModel extends PlaylistsEntity {
  const PlaylistsModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
  });

  factory PlaylistsModel.fromJson(Map<String, dynamic> json) {
    return PlaylistsModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: json['items'] != null
          ? List<PlaylistModel>.from(
              json['items']
                  .map((x) => x != null ? PlaylistModel.fromJson(x) : null)
                  .where((x) => x != null),
            )
          : [],
    );
  }
}
