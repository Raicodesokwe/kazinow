import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/profile_view.dart';
import '../../pages/profile_page.dart';

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
              child: Container(
                height: 50,
                width: size.width * 0.5,
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
                    Text('Kazi',
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
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(color: Colors.white54),
                child: DefaultTabController(
                  length: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TabBar(
                      labelPadding: EdgeInsets.zero,
                      isScrollable: true,
                      labelColor: Colors.white,
                      unselectedLabelColor: Color(0xFF626266),
                      indicator: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            side: BorderSide(
                                color: const Color(0xFFE6E6E6), width: 1),
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            label: Text(
                              'All',
                              style: TextStyle(
                                  color: tabController!.index == 0
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            backgroundColor: tabController!.index == 0
                                ? Colors.pink
                                : Colors.transparent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            side: BorderSide(
                                color: const Color(0xFFE6E6E6), width: 1),
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            label: Text(
                              'General cleaning',
                              style: TextStyle(
                                  color: tabController!.index == 1
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            backgroundColor: tabController!.index == 1
                                ? Colors.pink
                                : Colors.transparent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            side: BorderSide(
                                color: const Color(0xFFE6E6E6), width: 1),
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            label: Text(
                              'Assembling furniture',
                              style: TextStyle(
                                  color: tabController!.index == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            backgroundColor: tabController!.index == 2
                                ? Colors.pink
                                : Colors.transparent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            side: BorderSide(
                                color: const Color(0xFFE6E6E6), width: 1),
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            label: Text(
                              'Welding',
                              style: TextStyle(
                                  color: tabController!.index == 3
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            backgroundColor: tabController!.index == 3
                                ? Colors.pink
                                : Colors.transparent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            side: BorderSide(
                                color: const Color(0xFFE6E6E6), width: 1),
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            label: Text(
                              'Photographer',
                              style: TextStyle(
                                  color: tabController!.index == 4
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            backgroundColor: tabController!.index == 4
                                ? Colors.pink
                                : Colors.transparent,
                          ),
                        ),
                      ],
                      controller: tabController,
                    ),
                  ),
                )),
            SizedBox(
              height: size.height * 0.015,
            ),
            Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: profileviewList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage(
                                        videoview:
                                            profileviewList[index].videoView!,
                                        description:
                                            profileviewList[index].description!,
                                        image:
                                            profileviewList[index].profilePic!,
                                        name: profileviewList[index].name!,
                                      )));
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 20,
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.pink.withOpacity(0.7),
                                            width: 2)),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  profileviewList[index]
                                                      .profilePic!))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    profileviewList[index].name!,
                                    style: GoogleFonts.prompt(
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ScaleTransition(
              scale: scaleAnimation,
              child: Container(
                height: 50,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                        labelColor: Colors.black,
                        labelStyle:
                            GoogleFonts.prompt(fontWeight: FontWeight.w600),
                        indicator: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        tabs: const [
                          Tab(
                            text: 'Explore',
                          ),
                          Tab(
                            text: 'Discover',
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
