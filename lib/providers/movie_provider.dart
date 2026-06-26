import 'dart:core';

import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/movie_parser.dart';

class MovieProvider extends ChangeNotifier {
  // final List<String> _movieList = [
  //   'The Shawshank Redemption',
  //   'The Godfather',
  //   'The Dark Knight',
  //   'Pulp Fiction',
  //   'The Lord of the Rings: The Return of the King',
  //   'Forrest Gump',
  //   'Inception',
  //   'Fight Club',
  //   'The Matrix',
  // ];
  List<Movie> _movieList = [];
  List<Movie> get movieList => _movieList;

  Future<void> loadMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(context).loadString('assets/data/movies.json');
      final movies = MovieParser.parse(jsonString);
      _movieList = movies;
      notifyListeners();
    } catch (e) {
      print('Error loading movies: $e');
    }
  }
  // List<Movie> loadMovies() {

  //   return _movieList;
  // }
}
