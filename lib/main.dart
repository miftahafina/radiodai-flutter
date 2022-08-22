import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


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


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.grey,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "images/logo_radio_dai.jpg",
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Tentang",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Radio Da'i merupakan evolusi dari sebuah nama, yakni Nida'ul Irsyad, yang berarti seruan yang membimbing.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Radio ini berdiri di bawah naungan Pesantren Islam Al-Irsyad Tengaran.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  bool _isPlay = false;

  Future<void> _togglePlay() async {
    setState(() {
      if (!_isPlay) {
        _isPlay = true;
        setSourceAudio();
        player.resume();
      } else {
        _isPlay = false;
        player.pause();
      }
    });
  }

  final player = AudioPlayer();

  Future<void> setSourceAudio() async {
    await player.setSourceUrl("https://pu.klikhost.com:7204/stream");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: const Text("Radio Da'i"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AboutScreen();
                }));
              },
              icon: const Icon(
                Icons.info_outline_rounded,
                color: Colors.grey,
              )
          )
        ],
      ),

      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
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
                              onPressed: _togglePlay,
                              icon: (_isPlay
                                ? const Icon(Icons.pause_rounded, color: Colors.white, size: 36)
                                : const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 36)
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
          )
        ],
      ),
    );
  }
}