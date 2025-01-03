import 'package:duzify/data/search/models/albums.dart';
import 'package:duzify/data/search/models/artists.dart';
import 'package:duzify/data/search/models/audiobooks.dart';
import 'package:duzify/data/search/models/episodes.dart';
import 'package:duzify/data/search/models/playlists.dart';
import 'package:duzify/data/search/models/shows.dart';
import 'package:duzify/data/search/models/tracks.dart';
import 'package:duzify/domain/search/entities/search.dart';

class SearchModel extends SearchEntity {
  const SearchModel({
    required super.tracks,
    required super.artists,
    required super.albums,
    required super.playlists,
    required super.shows,
    required super.episodes,
    required super.audiobooks,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      tracks: TracksModel.fromJson(json['tracks']),
      artists: ArtistsModel.fromJson(json['artists']),
      albums: AlbumsModel.fromJson(json['albums']),
      playlists: PlaylistsModel.fromJson(json['playlists']),
      shows: ShowsModel.fromJson(json['shows']),
      episodes: EpisodesModel.fromJson(json['episodes']),
      audiobooks: AudiobooksModel.fromJson(json['audiobooks']),
    );
  }
}
