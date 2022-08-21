import 'package:flutter/material.dart';

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
      home: const RadioPlayerScreen(),
    );
  }
}

class RadioPlayerScreen extends StatelessWidget {
  const RadioPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Da'i"),
        actions: [
          IconButton(
            onPressed: () {},
              icon: const Icon(
                Icons.lightbulb,
                color: Colors.white,
              )
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline_rounded,
                color: Colors.white,
              )
          )
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Text('Album art'),
          Text("Radio Da'i"),
          Text('Butuh, Tengaran, Kab. Semarang'),
          Text('Play Button'),
        ],
      ),
    );
  }
}

