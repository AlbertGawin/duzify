import 'package:duzify/data/search/models/playlist.dart';

class PlaylistsModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<PlaylistModel> items;

  const PlaylistsModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
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
