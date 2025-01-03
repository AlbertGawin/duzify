import 'package:duzify/data/search/models/albums.dart';
import 'package:duzify/data/search/models/artists.dart';
import 'package:duzify/data/search/models/audiobooks.dart';
import 'package:duzify/data/search/models/episodes.dart';
import 'package:duzify/data/search/models/playlists.dart';
import 'package:duzify/data/search/models/shows.dart';
import 'package:duzify/data/search/models/tracks.dart';

class SearchModel {
  final TracksModel tracks;
  final ArtistsModel artists;
  final AlbumsModel albums;
  final PlaylistsModel playlists;
  final ShowsModel shows;
  final EpisodesModel episodes;
  final AudiobooksModel audiobooks;

  const SearchModel({
    required this.tracks,
    required this.artists,
    required this.albums,
    required this.playlists,
    required this.shows,
    required this.episodes,
    required this.audiobooks,
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
