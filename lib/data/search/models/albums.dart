import 'package:duzify/data/search/models/album.dart';
import 'package:duzify/domain/search/entities/albums.dart';

class AlbumsModel extends AlbumsEntity {
  const AlbumsModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
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
