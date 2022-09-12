import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/explore_service.dart';
import '../../pages/map_page.dart';

class HomeScrollSheet extends StatelessWidget {
  const HomeScrollSheet({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    FontAwesomeIcons.windowMinimize,
                    color: Colors.black,
                    size: 34,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text('Hey Erick'),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      cursorColor: Colors.black45,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.black54,
                          suffixIconColor: Colors.black54,
                          hintText: 'Search for service',
                          hintStyle: GoogleFonts.prompt(),
                          suffixIcon: Icon(Icons.mic),
                          border: InputBorder.none),
                    )),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text('Explore nearby'),
                Text(
                  'Services offered in your neighbourhood',
                  style: GoogleFonts.prompt(color: Colors.black54),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapPage()));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Open map',
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
                  height: size.height * 0.015,
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: exploreserviceList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            exploreserviceList[index].pic!)),
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                exploreserviceList[index].service!,
                              ),
                              Text(
                                exploreserviceList[index].number!,
                                style: GoogleFonts.prompt(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text('Trending Services'),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: exploreserviceList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            exploreserviceList[index].pic!)),
                                    color: Colors.white54,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                exploreserviceList[index].service!,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Text('Recommended'),
                Text(
                  'Services near you',
                  style: GoogleFonts.prompt(color: Colors.black54),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: exploreserviceList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            exploreserviceList[index].pic!)),
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                exploreserviceList[index].service!,
                              ),
                              Text(
                                exploreserviceList[index].number!,
                                style: GoogleFonts.prompt(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
