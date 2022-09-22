import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazinow/widgets/custom_clipper.dart';
import 'package:kazinow/widgets/custom_clippertwo.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
    required this.size,
    required this.tabController,
    required this.scaleAnimation,
  }) : super(key: key);

  final Size size;
  final TabController? tabController;
  final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: size.height * 0.54,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Center(
              child: ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                    height: 50,
                    width: size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.pinkAccent,
                                  Colors.blue
                                ],
                              )),
                        ),
                        Text('Mukuru',
                            style: TextStyle(
                                fontSize: 30,
                                letterSpacing: 2.5,
                                color: Colors.white,
                                shadows: const [
                                  Shadow(
                                      color: Colors.pinkAccent, blurRadius: 8),
                                  Shadow(color: Colors.red, blurRadius: 10),
                                  Shadow(color: Colors.pink, blurRadius: 12),
                                ])),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.pinkAccent,
                                  Colors.blue
                                ],
                              )),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)))),
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            ClipPath(
              clipper: MyCustomClipperTwo(),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                  Positioned(
                      left: 20,
                      top: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    '🚀',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.pink.withOpacity(0.3)),
                              ),
                              Text('Send money')
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\$20,000.98',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/usflag.jpg")),
                                    color: Colors.white54,
                                    shape: BoxShape.circle),
                              ),
                              Text(
                                'Change currency',
                                style: GoogleFonts.prompt(),
                              ),
                              Icon(Icons.currency_exchange)
                            ],
                          ),
                        ],
                      )),
                  Positioned(bottom: 15, right: 15, child: Text('Hey Erick'))
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ScaleTransition(
              scale: scaleAnimation,
              child: ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                    height: 50,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Send money now',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
