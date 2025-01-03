import 'package:duzify/domain/search/entities/show.dart';

class ShowsEntity {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<ShowEntity> items;

  const ShowsEntity({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });
}
