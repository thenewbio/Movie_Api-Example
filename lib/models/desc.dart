import 'package:flutter/material.dart';
import 'package:mini_practice/models/text.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote;

  const Description({
    Key? key,
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: Modifiedtext(
                      text: '⭐ Average Rating - ' + vote,
                      size: 32,
                      color: Colors.white,
                    )),
              ])),
          SizedBox(height: 15),
          Container(
              padding: EdgeInsets.all(10),
              child: Modifiedtext(
                text: name != null ? name : 'Not Loaded',
                size: 24,
                color: Colors.white,
              )),
          Container(
              padding: const EdgeInsets.only(left: 10),
              child: Modifiedtext(
                text: 'Releasing On - ',
                size: 14,
                color: Colors.black,
              )),
          Row(
            children: [
              SizedBox(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Modifiedtext(
                      text: description,
                      size: 25,
                      color: Colors.white,
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
