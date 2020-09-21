import 'package:flutter/material.dart';
import 'movies_screen.dart';
import 'theaters_screen.dart';
import 'myamc_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  List<Widget> _screens = [MoviesScreen(), TheatersScreen(), MyAmcScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          barItem(Icons.theaters, "SEE A MOVIE"),
          barItem(Icons.location_on, "THEATERS"),
          barItem(Icons.person, "MY AMC"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

BottomNavigationBarItem barItem(IconData icon, String title) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 10.0,
        color: Colors.white,
      ),
    ),
  );
}
