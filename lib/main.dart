import 'package:flutter/material.dart';
import 'package:travel_app/widgets/placeDetail.dart';

import 'home.ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.amber,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        HomeUi.homeRoute: (context) => const HomeUi(),
        PlaceDetail.route: (context) => PlaceDetail(),

      },
    );
  }
}
