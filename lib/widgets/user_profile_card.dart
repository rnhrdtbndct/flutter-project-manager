// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class UserProfileCard extends StatelessWidget {
  const UserProfileCard(
      {super.key, required this.photoURL, this.userFullName, this.userEmail});

  final photoURL;
  final userFullName;
  final userEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 360,
                  height: 350,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF003A6C).withOpacity(0.6),
                            Color(0xFF003A6C).withOpacity(0.6),
                            Color(0xFF003A6C),
                            Color(0xFF003A6C),
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Wrap(
                          children: [
                            Center(
                              child: Container(
                                width: 175,
                                height: 175,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xff8B8FC9)),
                                  image: DecorationImage(
                                    image: NetworkImage(photoURL),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 360,
                              height: 100,
                              child: Wrap(
                                children: [
                                  Center(
                                    child: Container(
                                      width: 360,
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          userFullName,
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontFamily: 'MPlus',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 360,
                                    height: 25,
                                    alignment: Alignment.center,
                                    child: Text(
                                      userEmail,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0XFF01AFEF),
                                        fontFamily: 'MPlus',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   width: 360,
                                  //   height: 25,
                                  //   alignment: Alignment.center,
                                  //   child: Text(
                                  //     'Davao City',
                                  //     style: TextStyle(
                                  //       fontSize: 15,
                                  //       color: Colors.white,
                                  //       fontFamily: 'MPlus',
                                  //       fontWeight: FontWeight.w300,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 360,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF003A6C),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Wrap(
                    direction: Axis.vertical,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: FractionalTranslation(
                              translation: Offset(5, -0.5),
                              child: FloatingActionButton(
                                onPressed: () {
                                  // Add your onPressed code here!
                                },
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  'assets/images/addu-seal.png',
                                  fit: BoxFit.contain,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 358 / 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 33,
                                    color: Colors.white,
                                    fontFamily: 'MPlus',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "PROJECTS",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0XFF01AFEF),
                                    fontFamily: 'MPlus',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        alignment: Alignment.center,
                        child: SizedBox(
                          child: Text("|",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "MPlus",
                                fontWeight: FontWeight.w200,
                                color: Color(0xffC6C4C9).withOpacity(0.9),
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 358 / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "766",
                              style: TextStyle(
                                fontSize: 33,
                                color: Colors.white,
                                fontFamily: 'MPlus',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "FOLLOWING",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0XFF01AFEF),
                                fontFamily: 'MPlus',
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        alignment: Alignment.center,
                        child: SizedBox(
                          child: Text("|",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "MPlus",
                                fontWeight: FontWeight.w200,
                                color: Color(0xffC6C4C9).withOpacity(0.9),
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 358 / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "166",
                              style: TextStyle(
                                fontSize: 33,
                                color: Colors.white,
                                fontFamily: 'MPlus',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "FOLLOWERS",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0XFF01AFEF),
                                fontFamily: 'MPlus',
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
