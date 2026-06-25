import 'dart:core';

import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  final List<String> _movieList = [
    'The Shawshank Redemption',
    'The Godfather',
    'The Dark Knight',
    'Pulp Fiction',
    'The Lord of the Rings: The Return of the King',
    'Forrest Gump',
    'Inception',
    'Fight Club',
    'The Matrix',
  ];

  List<String> get movieList => _movieList;

  List<String> loadMovies() {
    
    return _movieList;
  }
}
