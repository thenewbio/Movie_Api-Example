import 'package:flutter/material.dart';

import '../models/text.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({Key? key, required this.toprated}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      padding: const EdgeInsets.all(10),
=======
      padding: EdgeInsets.all(10),
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Modifiedtext(
            text: 'Top Rated Movies',
            size: 26,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: toprated.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        toprated[index]['poster_path']),
                              ),
                            ),
                            height: 200,
                          ),
<<<<<<< HEAD
                          const SizedBox(height: 5),
                          // ignore: avoid_unnecessary_containers
=======
                          SizedBox(height: 5),
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
                          Container(
                            child: Modifiedtext(
                              size: 15,
                              text: toprated[index]['title'] ?? 'Loading',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
