import 'package:flutter/material.dart';

import '../widgets/homepage/home_app_bar.dart';
import '../widgets/homepage/home_scroll_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  String selected = 'first';
  TabController? tabController;
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);

    tabController!.addListener(() {
      setState(() {});
    });
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
    scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 550),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(Duration(seconds: 1), () {
      controller.forward().then((value) => scaleController.forward());
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
    scaleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: FadeTransition(
          opacity: fadeAnimation,
          child: Container(
            width: size.width,
            height: size.height,
            child: CustomScrollView(
              slivers: [
                HomeAppBar(
                    size: size,
                    tabController: tabController,
                    scaleAnimation: scaleAnimation),
                HomeScrollSheet(size: size)
              ],
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
        ),
      ),
    );
  }
}
