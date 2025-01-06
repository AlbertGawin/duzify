class SearchReqEntity {
  final String q;
  final List<String>? type;
  final String? market;
  final int? limit;
  final int? offset;
  final String? includeExternal;

  const SearchReqEntity({
    required this.q,
    required this.type,
    this.market,
    this.limit,
    this.offset,
    this.includeExternal,
  });
}
