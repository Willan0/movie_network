import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_network/constant/api_constant.dart';
import 'package:movie_network/pages/home_page.dart';

import 'network/api/tmdb_api/tmdb.dart';

void main() {
  runApp(const MyApp());
  TheMovieDBAPI api  = TheMovieDBAPI(Dio());
  api.getNowPlayingMovies(kApiToken, 1).then((value) =>
  print(value)).catchError((e)=> print(e));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
