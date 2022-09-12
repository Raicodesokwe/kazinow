import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Icon(FontAwesomeIcons.windowMinimize),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(FontAwesomeIcons.arrowLeft),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'My Bio',
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            'I have over 10 years of experience in plaiting braids. I\'m the best at what I do and customer satisfaction is of utmost importance to me',
            style: GoogleFonts.prompt(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.5),
                    shape: BoxShape.circle),
              ),
              Text(
                'Background checked',
                style: GoogleFonts.prompt(),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                child: Center(
                  child: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink.withOpacity(0.5)),
              ),
              Text(
                'Pro since May, 22',
                style: GoogleFonts.prompt(),
              )
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
