import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todly/core/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    final prefs = await SharedPreferences.getInstance();
    final id = prefs.getString('token');

    return new Timer(duration, () {
      if (id != null) {
        Navigator.pushNamed(context, RouteNames.onboarding);
      } else {
        Navigator.pushNamed(context, RouteNames.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(30),
              child: Image.asset('assets/images/logo.png', scale: 3,),
            ),
          ],
        ),
      ),
    );
  }
}
