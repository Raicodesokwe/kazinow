import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kazinow/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  splashScreenTimer() {
    Timer(const Duration(seconds: 5), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..repeat(reverse: true);
  late final Animation<Offset> _animation =
      Tween(begin: Offset.zero, end: const Offset(0, 0.2))
          .animate(_animationController);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: SlideTransition(
            position: _animation,
            child: Container(
              height: 180,
              width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.red, Colors.pinkAccent, Colors.blue],
                        )),
                  ),
                  Text('Mukuru',
                      key: const ValueKey<String>("logocontainer"),
                      style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 2.5,
                          color: Colors.white,
                          shadows: const [
                            Shadow(color: Colors.pinkAccent, blurRadius: 8),
                            Shadow(color: Colors.red, blurRadius: 10),
                            Shadow(color: Colors.pink, blurRadius: 12),
                          ])),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.red, Colors.pinkAccent, Colors.blue],
                        )),
                  ),
                ],
              ),
              decoration:
                  BoxDecoration(color: Colors.white54, shape: BoxShape.circle),
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.red.withOpacity(0.2),
            Colors.pinkAccent.withOpacity(0.2),
            Colors.blue.withOpacity(0.2)
          ],
        )),
      ),
    );
  }
}
