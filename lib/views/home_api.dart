import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../models/text.dart';
import '../widget/top_rated.dart';
import '../widget/trending.dart';
import '../widget/tv.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // put your apiKey inside the String apiKey
  final String apikey = 'c2151f23cc2be082d3d302a4d4de898b';

// put your  readaccesstoken inside the String  readaccesstoken: these are gotten after your registration at TMDB
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjMjE1MWYyM2NjMmJlMDgyZDNkMzAyYTRkNGRlODk4YiIsInN1YiI6IjYyMzlhOGJhOGVjNGFiMDA0NGYwZTIwZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.KttDaxMTGIYbrvuLWdjnH44HCrMtlugY6NiZ0DkNYv0';

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
      logConfig: const ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    // ignore: deprecated_member_use
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();
    // print((trendingresult));
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
            text: 'Flutter Movie Api ❤️',
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
