import 'package:duzify/domain/search/entities/episode.dart';

class EpisodesEntity {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<EpisodeEntity> items;

  const EpisodesEntity({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });
}
