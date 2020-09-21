import 'package:flutter/material.dart';

class TheatersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          'Our Theaters',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
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
                'Your current theater is',
                style: TextStyle(fontSize: 26.0, color: Colors.white),
              ),
              ListTile(
                title: Text(
                  'Grand Pairy',
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                ),
                subtitle: Text(
                  '8266 Grand Pairy, Arlington, TX 76057',
                  style: TextStyle(color: Colors.white70, fontSize: 12.0),
                ),
                leading: Image.asset(
                  "lib/assets/logo.png",
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
