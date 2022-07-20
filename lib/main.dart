import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: wisdom(),
    ));

class wisdom extends StatefulWidget {
  const wisdom({Key? key}) : super(key: key);

  @override
  State<wisdom> createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {
  int _index = 0;
  var quotes = [
    "Spread love everywhere you go. Let no one ever come to you without leaving happier. -Mother Teresa",
    "When you reach the end of your rope, tie a knot in it and hang on. -Franklin D. Roosevelt",
    "Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead",
    " Don't judge each day by the harvest you reap but by the seeds that you plant. -Robert Louis Stevenson",
    "The future belongs to those who believe in the beauty of their dreams. -Eleanor Roosevelt",
    "Tell me and I forget. Teach me and I remember. Involve me and I learn. -Benjamin Franklin",
    "The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart. -Helen Keller",
    " It is during our darkest moments that we must focus to see the light. -Aristotle",
    "Whoever is happy will make others happy too. -Anne Frank",
    "Do not go where the path may lead, go instead where there is no path and leave a trail. -Ralph Waldo Emerson",
    "Spread love everywhere you go. Let no one ever come to you without leaving happier.",
    "When you reach the end of your rope, tie a knot in it and hang on."
        "Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead",
    "Never let the fear of striking out keep you from playing the game. -Babe Ruth",
    " Life is either a daring adventure or nothing at all. -Helen Keller",
    "Many of life's failures are people who did not realize how close they were to success when they gave up. -Thomas A. Edison",
    " You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. -Dr. Seuss"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quotes[ _index % quotes.length]),
            FlatButton.icon(
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny),
                label: Text("Inspire me"))
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
       _index += 1;
    });
    
  }
}
