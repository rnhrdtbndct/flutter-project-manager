import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.name,
    required this.username,
    required this.course,
    required this.year_level,
    required this.imageURL,
  });

  final String name;
  final String username;
  final String course;
  final String year_level;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF003A6C),
          width: 2.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Wrap(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageURL), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 200,
            child: Wrap(
              direction: Axis.vertical,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    name,
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '@' + username,
                    style: GoogleFonts.notoSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003A6C)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    year_level + ' Year',
                    style: GoogleFonts.roboto(fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    course,
                    style: GoogleFonts.roboto(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}