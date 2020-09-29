import 'package:app_demo3/app.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    _mockCheckForSessions().then(
      (status) {
        if (status) {
          _navigateToHome();
        }
      } 
    );
  }

  Future<bool> _mockCheckForSessions() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});

    return true;
  } 

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => App()
      ),
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack( 
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              child: Opacity(
                opacity: 0.5,
                child:Image.asset('assets/images/mountain.jpg')
              ),
              alignment: Alignment.bottomCenter,
            ),
            // Shimmer.fromColors(
            //   child: Container(
            //     padding: EdgeInsets.all(32.0),
            //     // child: Text(
            //     //   "Hello",
            //     //   style: TextStyle(
            //     //     fontSize: 90.0,
            //     //     fontFamily: 'Caveat',
            //     //     shadows: <Shadow>[
            //     //       Shadow(
            //     //         blurRadius: 18.0,
            //     //         color: Colors. black87,
            //     //         offset:  Offset.fromDirection(120,12),
            //     //       ),
            //     //     ],
            //     //   ),
            //     // ),
            //   ),
            // baseColor: Colors.black, 
            // highlightColor: Colors.black),
          ],
        ),
      ),
    );
  }
}