import 'package:flutter/material.dart';
import 'package:spotify/spotify.dart';
import 'amazon.dart';
import 'insta.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0;

  final pages= [

    MyHome(),

    Spotify(),


    demo()
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_rounded),label: "spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Instagram"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
