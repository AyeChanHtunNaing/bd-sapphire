import 'dart:io';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class BirthdayWish extends StatefulWidget {
  @override
  _BirthdayWishState createState() => _BirthdayWishState();
}

class _BirthdayWishState extends State<BirthdayWish> {
  double _cardWidth = 0;
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _cardWidth = 300;
      });
    });
  }

  void _playBirthdaySong() async {
    if (Platform.isIOS) {
      await _audioPlayer.play(DeviceFileSource('assets/audios/bdSong.mp3'));
    } else {
      await _audioPlayer.play(UrlSource('assets/audios/bdSong.mp3'));
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(16.0),
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFADD8E6),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Happy Birthday!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Wishing you a day filled with joy and happiness!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/birthday-cake.png',
                height: 300,
                width: 300,
              ),
              SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     _playBirthdaySong();
              //   },
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.white,
              //     backgroundColor: Colors.white54,
              //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              //   child: Text(
              //     'Send Wishes',
              //     style: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
