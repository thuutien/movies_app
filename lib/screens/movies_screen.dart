import 'package:flutter/material.dart';
import '../resource/rescource.dart';

class MoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          'See a Movie',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25.0, letterSpacing: 2.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: gridView(),
      ),
    );
  }
}

Widget gridView() {
  return GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 3.0,
    crossAxisSpacing: 3.0,
    childAspectRatio: 0.6,
    children: movieItems(),
  );
}

List<Widget> movieItems() {
  List<Widget> movieWidgets = [];
  for (Movie item in Resource.movies) {
    movieWidgets.add(Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item.assetString),
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
          ),
        ),
      ),
      Positioned(
        bottom: 5.0,
        child: Text(
          item.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]));
  }
  return movieWidgets;
}
