import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/explore_service.dart';
import '../widgets/profilepage/profile_bottom_sheet.dart';
import '../widgets/profilepage/profile_grid.dart';
import '../widgets/profilepage/profile_header.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String image;
  final String videoview;
  final String description;
  const ProfilePage(
      {Key? key,
      required this.name,
      required this.videoview,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 950));
    fadeAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void _moreInfo() {
      showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return ProfileBottomSheet();
          });
    }

    return SafeArea(
        child: Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Theme(
          data: Theme.of(context).copyWith(
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                  extendedSizeConstraints: BoxConstraints.tightFor(
            height: 50,
            width: size.width * 0.8,
          ))),
          child: FloatingActionButton.extended(
              backgroundColor: Colors.pink,
              elevation: 7,
              onPressed: () {},
              label: Text(
                'Schedule with ${widget.name}',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: FadeTransition(
        opacity: fadeAnimation,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.red.withOpacity(0.2),
              Colors.pinkAccent.withOpacity(0.2),
              Colors.blue.withOpacity(0.2)
            ],
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileHeader(
                  size: size,
                  widget: widget,
                  videoview: widget.videoview,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    widget.name,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    widget.description,
                    style:
                        GoogleFonts.prompt(fontSize: 15, color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.black54,
                    ),
                    Text(
                      'Thika(Near you)',
                      style: GoogleFonts.prompt(
                          fontSize: 12, color: Colors.black87),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_outline),
                    Icon(Icons.star_outline),
                    Text(
                      '58 reviews',
                      style: GoogleFonts.prompt(
                          fontSize: 12, color: Colors.black87),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      _moreInfo();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More details',
                          style: TextStyle(
                            color: Colors.pink,
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.pink,
                        )
                      ],
                    )),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add to team',
                            style: GoogleFonts.prompt(
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pink.withOpacity(0.5)),
                            child: Icon(
                              FontAwesomeIcons.bagShopping,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 50,
                      width: size.width * 0.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Share Profile',
                            style: GoogleFonts.prompt(
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pink.withOpacity(0.5)),
                            child: Icon(
                              Icons.share,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileGrid(),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
