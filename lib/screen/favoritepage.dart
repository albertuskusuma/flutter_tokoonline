import 'package:flutter/material.dart';

class Favoritepage extends StatefulWidget {
  @override
  _FavoritepageState createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: Center(
        child:Text('Favorite Page')
      ),
    );
  }
}