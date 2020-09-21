import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: centerLogo(),
        ),
      ),
    );
  }
}

Widget centerLogo() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 150.0,
          width: 150.0,
          child: Image.asset('lib/assets/logo.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '0.0.1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        )
      ],
    ),
  );
}
