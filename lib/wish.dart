import 'package:flutter/material.dart';

class BirthdayWish extends StatelessWidget {
  const BirthdayWish({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
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
              'assets/images/birthday.jpeg',
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //play song
              },
              child: Text('Send Wishes'),
            ),
          ],
        ),
      ),
    );
  }
}
