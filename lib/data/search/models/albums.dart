import 'package:duzify/data/search/models/album.dart';

class AlbumsModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<AlbumModel> items;

  const AlbumsModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory AlbumsModel.fromJson(Map<String, dynamic> json) {
    return AlbumsModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<AlbumModel>.from(
          json['items'].map((x) => AlbumModel.fromJson(x))),
    );
  }
}
