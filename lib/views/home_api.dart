import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../models/text.dart';
import '../widget/top_rated.dart';
import '../widget/trending.dart';
import '../widget/tv.dart';

class Home extends StatefulWidget {
<<<<<<< HEAD
  const Home({Key? key}) : super(keylass _HomeState extends State<Home> {
<<<<<<< HEAD
  // put your apiKey inside the String apiKey
  final String apikey = 'c2151f23cc2be082d3d302a4d4de898b';

// put your  readaccesstoken inside the String  readaccesstoken: these are gotten after your registration at TMDB
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjMjE1MWYyM2NjMmJlMDgyZDNkMzAyYTRkNGRlODk4YiIsInN1YiI6IjYyMzlhOGJhOGVjNGFiMDA0NGYwZTIwZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.KttDaxMTGIYbrvuLWdjnH44HCrMtlugY6NiZ0DkNYv0';

=======
  final String apikey = 'c2151f23cc2be082d3d302a4d4de898b';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjMjE1MWYyM2NjMmJlMDgyZDNkMzAyYTRkNGRlODk4YiIsInN1YiI6IjYyMzlhOGJhOGVjNGFiMDA0NGYwZTIwZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.KttDaxMTGIYbrvuLWdjnH44HCrMtlugY6NiZ0DkNYv0';
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
<<<<<<< HEAD
      logConfig: const ConfigLogger(
=======
      logConfig: ConfigLogger(
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    // ignore: deprecated_member_use
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();
<<<<<<< HEAD
    // print((trendingresult));
=======
    print((trendingresult));
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Modifiedtext(
<<<<<<< HEAD
            text: 'Flutter Movie Api ❤️',
=======
            text: 'Flutter Movie App ❤️',
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
            size: 20,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            TV(tv: tv),
            TrendingMovies(
              trending: trendingmovies,
            ),
            TopRatedMovies(
              toprated: topratedmovies,
            ),
          ],
        ));
  }
}
