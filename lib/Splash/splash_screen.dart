// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:krazzo_seller/Splash/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _stayDelay() {
    _timer = Timer(const Duration(seconds: 4), _NextScreen);
  }

  _NextScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const home();
    }));
  }

  @override
  void initState() {
    super.initState();
    _stayDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 0, right: 18, left: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Center(
                    child: Image(
                      image: AssetImage("assets/1.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 100,
                  width: 150,
                  child: Column(
                    children: const [
                      Text(
                        "from",
                        style: TextStyle(fontSize: 16),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 50),
                        child: Image(
                          image: AssetImage("assets/2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
