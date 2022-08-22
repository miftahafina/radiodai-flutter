import 'package:flutter/material.dart';
import 'package:radio_dai/screen/PlayerScreen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Radio Da'i",
      theme: ThemeData(
          primarySwatch: Colors.teal
      ),
      home: const PlayerScreen(),
    );
  }
}
