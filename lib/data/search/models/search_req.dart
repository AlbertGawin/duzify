class SearchReq {
  final String q;
  final List<String> type;
  final String? market;
  final int? limit;
  final int? offset;
  final String? includeExternal;

  SearchReq({
    required this.q,
    this.type = const [
      "album",
      "artist",
      "playlist",
      "track",
      "show",
      "episode",
      "audiobook"
    ],
    this.market,
    this.limit,
    this.offset,
    this.includeExternal,
  });
}
