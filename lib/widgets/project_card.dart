import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 505,
      height: 305,
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Color(0xFF003A6C)),
          borderRadius: BorderRadius.circular(10.0)),
      child: Wrap(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                "Project Name",
                style: GoogleFonts.notoSans(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003A6C)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: 200,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra lectus a sapien placerat porta. Fusce vestibulum aliquam velit a commodo. Proin consectetur viverra dui, vel pellentesque lacus tristique sed. Etiam id neque sed magna dictum mattis at at augue. Vestibulum at gravida massa. Vivamus sit amet dolor neque. Phasellus imperdiet nulla ac ante varius molestie. Donec massa lacus, suscipit quis faucibus pellentesque, bibendum eu eros. Nam ut libero accumsan, lacinia lorem quis, ornare elit. Morbi dui orci, consectetur a aliquam sit amet, mollis ut eros. Morbi bibendum, justo vitae ullamcorper venenatis, felis felis pretium est, non facilisis mauris eros non lacus. Vestibulum elit mauris, blandit eget nunc malesuada, rhoncus consequat nisl. Nam laoreet vehicula convallis. Morbi tristique nunc non justo iaculis lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra lectus a sapien placerat porta. Fusce vestibulum aliquam velit a commodo. Proin consectetur viverra dui, vel pellentesque lacus tristique sed. Etiam id neque sed magna dictum mattis at at augue. Vestibulum at gravida massa. Vivamus sit amet dolor neque. Phasellus imperdiet nulla ac ante varius molestie. Donec massa lacus, suscipit quis faucibus pellentesque, bibendum eu eros. Nam ut libero accumsan, lacinia lorem quis, ornare elit. Morbi dui orci, consectetur a aliquam sit amet, mollis ut eros. Morbi bibendum, justo vitae ullamcorper venenatis, felis felis pretium est, non facilisis mauris eros non lacus. Vestibulum elit mauris, blandit eget nunc malesuada, rhoncus consequat nisl. Nam laoreet vehicula convallis. Morbi tristique nunc non justo iaculis lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra lectus a sapien placerat porta. Fusce vestibulum aliquam velit a commodo. Proin consectetur viverra dui, vel pellentesque lacus tristique sed. Etiam id neque sed magna dictum mattis at at augue. Vestibulum at gravida massa. Vivamus sit amet dolor neque. Phasellus imperdiet nulla ac ante varius molestie. Donec massa lacus, suscipit quis faucibus pellentesque, bibendum eu eros. Nam ut libero accumsan, lacinia lorem quis, ornare elit. Morbi dui orci, consectetur a aliquam sit amet, mollis ut eros. Morbi bibendum, justo vitae ullamcorper venenatis, felis felis pretium est, non facilisis mauris eros non lacus. Vestibulum elit mauris, blandit eget nunc malesuada, rhoncus consequat nisl. Nam laoreet vehicula convallis. Morbi tristique nunc non justo iaculis lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra lectus a sapien placerat porta. Fusce vestibulum aliquam velit a commodo. Proin consectetur viverra dui, vel pellentesque lacus tristique sed. Etiam id neque sed magna dictum mattis at at augue. Vestibulum at gravida massa. Vivamus sit amet dolor neque. Phasellus imperdiet nulla ac ante varius molestie. Donec massa lacus, suscipit quis faucibus pellentesque, bibendum eu eros. Nam ut libero accumsan, lacinia lorem quis, ornare elit. Morbi dui orci, consectetur a aliquam sit amet, mollis ut eros. Morbi bibendum, justo vitae ullamcorper venenatis, felis felis pretium est, non facilisis mauris eros non lacus. Vestibulum elit mauris, blandit eget nunc malesuada, rhoncus consequat nisl. Nam laoreet vehicula convallis. Morbi tristique nunc non justo iaculis lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;",
                    style: GoogleFonts.notoSans(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 500,
            height: 50,
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  width: 240,
                  height: 45,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Assigned to: Team Name",
                    style: GoogleFonts.notoSans(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    width: 240,
                    height: 45,
                    alignment: Alignment.centerRight,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rein-profile.jpg'),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rein-profile.jpg'),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rein-profile.jpg'),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rein-profile.jpg'),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rein-profile.jpg'),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
