import 'package:duzify/domain/search/entities/album.dart';

class AlbumsEntity {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<AlbumEntity> items;

  const AlbumsEntity({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });
}
