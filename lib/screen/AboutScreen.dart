import 'package:flutter/material.dart';

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
