import 'package:flutter/material.dart';

class MyAmcScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          'My AMC',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25.0, letterSpacing: 2.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your next movie is',
                style: TextStyle(fontSize: 26.0, color: Colors.white),
              ),
              ListTile(
                title: Text(
                  'Anebella',
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                ),
                subtitle: Text(
                  '8:30pm Wenesday, Oct 29, 2020',
                  style: TextStyle(color: Colors.white70, fontSize: 15.0),
                ),
                leading: Image.asset(
                  "lib/assets/movies/annabell.jpg",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
Widget movieStack() {
  return Stack(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/movies/annabell.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: FractionalOffset.center,
          end: FractionalOffset.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.0),
            Colors.black,
          ],
          stops: [
            0.0,
            1.0,
          ],
        )),
      ),
    ],
  );
}
 */
