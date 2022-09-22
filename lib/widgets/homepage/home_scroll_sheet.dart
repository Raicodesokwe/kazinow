import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazinow/pages/check_rates.dart';
import 'package:kazinow/widgets/custom_clippertwo.dart';

import '../../pages/transactions_page.dart';
import '../custom_clipper.dart';

class HomeScrollSheet extends StatefulWidget {
  const HomeScrollSheet({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<HomeScrollSheet> createState() => _HomeScrollSheetState();
}

class _HomeScrollSheetState extends State<HomeScrollSheet> {
  String selected = 'USD';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  height: widget.size.height * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CheckRates()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Check rates',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.size.height * 0.01,
                ),
                Row(
                  children: [
                    Text(selected),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 40,
                        width: 1,
                        decoration: BoxDecoration(color: Colors.black45),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(selected == 'USD'
                                  ? "assets/images/usflag.jpg"
                                  : selected == 'EUR'
                                      ? "assets/images/euro.png"
                                      : selected == 'GBP'
                                          ? "assets/images/uk.png"
                                          : "assets/images/uk.png")),
                          color: Colors.white54,
                          shape: BoxShape.circle),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            cursorColor: Colors.black45,
                            decoration: InputDecoration(
                                hintText: 'Enter amount',
                                hintStyle: GoogleFonts.prompt(),
                                border: InputBorder.none),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: widget.size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'USD';
                          });
                        },
                        child: Chip(
                          side: BorderSide(
                              color: const Color(0xFFE6E6E6), width: 1),
                          labelPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          label: Text(
                            'USD',
                            style: TextStyle(
                                color: selected == 'USD'
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          backgroundColor: selected == 'USD'
                              ? Colors.pink
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'EUR';
                          });
                        },
                        child: Chip(
                          side: BorderSide(
                              color: const Color(0xFFE6E6E6), width: 1),
                          labelPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          label: Text(
                            'EUR',
                            style: TextStyle(
                                color: selected == 'EUR'
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          backgroundColor: selected == 'EUR'
                              ? Colors.pink
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'GBP';
                          });
                        },
                        child: Chip(
                          side: BorderSide(
                              color: const Color(0xFFE6E6E6), width: 1),
                          labelPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          label: Text(
                            'GBP',
                            style: TextStyle(
                                color: selected == 'GBP'
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          backgroundColor: selected == 'GBP'
                              ? Colors.pink
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: widget.size.height * 0.015,
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
                          hintText: 'Recipient',
                          hintStyle: GoogleFonts.prompt(),
                          border: InputBorder.none),
                    )),
                SizedBox(
                  height: widget.size.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Chip(
                        side: BorderSide(
                            color: const Color(0xFFE6E6E6), width: 1),
                        labelPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        label: Text(
                          'Jack',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Colors.transparent,
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
                          'Joyce',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Colors.transparent,
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
                          'Tim',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: widget.size.height * 0.02,
                ),
                Center(
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
                SizedBox(
                  height: widget.size.height * 0.03,
                ),
                Row(
                  children: [
                    Text('Recent Transactions'),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactionsPage()));
                      },
                      child: Text(
                        'See all',
                        style: GoogleFonts.prompt(color: Colors.black54),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: widget.size.height * 0.03,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text('Mike James'),
                  subtitle: Text(
                    '+263345234456',
                    style: GoogleFonts.prompt(color: Colors.black54),
                  ),
                  leading: Stack(
                    children: [
                      ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: Center(
                            child: Text(
                              'MJ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/zimbabwe.png")),
                              color: Colors.white54,
                              shape: BoxShape.circle),
                        ),
                      )
                    ],
                  ),
                  trailing: Text('\$206.58'),
                ),
                SizedBox(
                  height: widget.size.height * 0.03,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text('Khuli Ndlovu'),
                  subtitle: Text(
                    '+23345239452',
                    style: GoogleFonts.prompt(color: Colors.black54),
                  ),
                  leading: Stack(
                    children: [
                      ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: Center(
                            child: Text(
                              'KN',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/namibia.png")),
                              color: Colors.white54,
                              shape: BoxShape.circle),
                        ),
                      )
                    ],
                  ),
                  trailing: Text('\$396.58'),
                ),
                SizedBox(
                  height: widget.size.height * 0.015,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TransactionsPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(fontSize: 20, color: Colors.pink),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.pink,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.size.height * 0.03,
                ),
              ],
            ),
          )),
    );
  }
}
