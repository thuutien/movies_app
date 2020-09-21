import 'package:flutter/material.dart';
import 'screens/bottom_navigation.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorBrightness: Brightness.dark,
      ),
      home: BottomNavigation(),
    );
  }
}
