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
      home: const AboutScreen(),
    );
  }
}


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              "Tentang",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Radio Da'i merupakan evolusi dari sebuah nama, yakni Nida'ul Irsyad, yang berarti seruan yang membimbing.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Radio ini berdiri di bawah naungan Pesantren Islam Al-Irsyad Tengaran.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }
}


class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: const Text("Radio Da'i"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline_rounded,
              color: Colors.grey,
            )
          )
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "images/album_art.jpg",
                  fit: BoxFit.cover,
                  height: 300,
                  width: 300,
                ),
              )
            ],
          ),


          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      "Radio Da'i",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Butuh - Tengaran - Kab. Semarang',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow_rounded,
                          // Icons.pause_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

