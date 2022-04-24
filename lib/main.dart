import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_practice/views/home.dart';

>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
import 'views/home_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
<<<<<<< HEAD
        home: const Home());
=======
        home: Home());
>>>>>>> e59f2e44272ee03c084b7339cb34ddc6955da269
  }
}
