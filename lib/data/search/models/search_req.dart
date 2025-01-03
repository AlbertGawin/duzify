class SearchReq {
  final String q;
  final List<String> type;
  final String? market;
  final int? limit;
  final int? offset;
  final String? includeExternal;

  const SearchReq({
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

  factory SearchReq.fromJson(Map<String, dynamic> json) {
    return SearchReq(
      q: json['q'],
      type: List<String>.from(json['type'].map((x) => x)),
      market: json['market'],
      limit: json['limit'],
      offset: json['offset'],
      includeExternal: json['include_external'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'q': q,
      'type': type.join(','),
    };

    if (market != null) data['market'] = market;
    if (limit != null) data['limit'] = limit;
    if (offset != null) data['offset'] = offset;
    if (includeExternal != null) data['include_external'] = includeExternal;

    return data;
  }
}
