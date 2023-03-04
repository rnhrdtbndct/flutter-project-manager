import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 505,
          height: 205,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF003A6C),
                width: 2.5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 10.0,
                    offset: Offset(5, 5))
              ]),
          child: Wrap(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/rein-profile.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.white,
                child: Wrap(
                  direction: Axis.vertical,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      height: 30,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Reinhardt Benedicto',
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '@rnhrdtbndct',
                        style: GoogleFonts.notoSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF003A6C)),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '3rd Year ',
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'BS Information Technology ',
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
