import 'package:benedictoflutter/screens/dashboard.dart';
import 'package:benedictoflutter/screens/profile.dart';
import 'package:benedictoflutter/services/auth_services.dart';
import 'package:benedictoflutter/services/firestore_db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
  bool _obscureText = true;
  bool _rememberMe = false;
  int activeIndex = 0;
  final images = [
    'assets/images/addu-finster.jpg',
    'assets/images/addu-jacinto.jpg',
    'assets/images/addu-roxas.jpg',
    'assets/images/addu-ccfc.jpg',
    'assets/images/addu-jubilee.jpg',
    'assets/images/addu-martin-hall.jpg',
  ];
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: webView(context),
    );
  }

  Scaffold webView(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF003A6C),
      child: Center(
        child: Wrap(
          children: [
            Container(
                width: 500,
                height: 600,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.white, blurRadius: 10),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Wrap(
                  children: [
                    Container(
                      width: 500,
                      height: 600,
                      child: Padding(
                        padding: EdgeInsets.only(left: 75, right: 75),
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                  padding: EdgeInsets.only(top: 30),
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/images/addu-seal.png',
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  )),
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Ateneo de Davao University",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                top: 10,
                                left: 10,
                              ),
                              child: Text(
                                "E-Mail",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade500)),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                top: 5,
                              ),
                              child: Form(
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() => email = value);
                                  },
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF003A6C))),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 5),
                                    prefixIcon: Icon(Icons.mail_outline),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                top: 10,
                                left: 10,
                              ),
                              child: Text(
                                "Password",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade500)),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 5),
                              child: Form(
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() => password = value);
                                  },
                                  obscureText: _obscureText,
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF003A6C))),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 5),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (_obscureText == false) {
                                              _obscureText = true;
                                            } else {
                                              _obscureText = false;
                                            }
                                          });
                                        },
                                        icon: Icon(
                                            Icons.remove_red_eye_outlined)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                padding: EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    Container(
                                        width: 175,
                                        height: 55,
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10, right: 10),
                                        child: loginButton()),
                                    Container(
                                        width: 175,
                                        height: 55,
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        child: registerButton('/signup')),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 175,
                                      height: 55,
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            activeColor: Color(0xFF003A6C),
                                            value: _rememberMe,
                                            onChanged: (logo) {
                                              setState(() {
                                                if (_rememberMe == false) {
                                                  _rememberMe = true;
                                                } else {
                                                  _rememberMe = false;
                                                }
                                              });
                                            },
                                          ),
                                          Container(
                                              child: Text(
                                            "Remember Me",
                                            style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black)),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width: 175,
                                        height: 55,
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Forgot Password?",
                                          style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey.shade400)),
                                          textAlign: TextAlign.end,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 60,
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: ElevatedButton.icon(
                                onPressed: () async {
                                  await signInWithGoogle().then((value) {
                                    FirestoreDB()
                                        .usersDB
                                        .doc(FirebaseAuth
                                            .instance.currentUser?.uid)
                                        .set({
                                      'name': FirebaseAuth
                                          .instance.currentUser?.displayName
                                          .toString(),
                                      'email': FirebaseAuth
                                          .instance.currentUser?.email
                                          .toString(),
                                      'photoURL': FirebaseAuth
                                          .instance.currentUser?.photoURL
                                          .toString()
                                    });
                                    Navigator.pushNamedAndRemoveUntil(context,
                                        '/dashboard', ModalRoute.withName('/'));
                                  }).onError((error, stackTrace) => null);
                                },
                                label: Text(
                                  'Sign in with Google',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF003A6C))),
                                ),
                                icon: Image.asset(
                                  'assets/images/google-logo.png',
                                  fit: BoxFit.contain,
                                  width: 30,
                                  height: 30,
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xFF179C52)),
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    backgroundColor: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Container(
                width: 500,
                height: 600,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 500,
                        height: 600,
                        alignment: Alignment.center,
                        child: carouselSlider(context)),
                    Container(
                        padding: const EdgeInsets.all(30),
                        alignment: Alignment.bottomRight,
                        child: buildIndicator())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  ElevatedButton loginButton() {
    return ElevatedButton(
      onPressed: () async {
        await signIn(email, password);
        if (FirebaseAuth.instance.currentUser != null) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/dashboard',
            ModalRoute.withName('/'),
          );
        } else {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/',
            ModalRoute.withName('/'),
          );
        }
      },
      style: ElevatedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF003A6C)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          backgroundColor: Color(0xFF003A6C)),
      child: Text(
        "Login",
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }

  ElevatedButton registerButton(String route) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, route, ModalRoute.withName('/'));
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: Color(0xFF003A6C))),
            backgroundColor: Colors.white),
        child: Text(
          "Sign Up",
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E3E5E))),
        ));
  }

  CarouselSlider carouselSlider(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        final image = images[index];
        return buildImage(image, index);
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        onPageChanged: (index, reason) => setState(() => activeIndex = index),
      ),
    );
  }

  Widget buildImage(String image, int index) =>
      Container(child: Image.network(image, fit: BoxFit.cover));

  Widget buildIndicator() => AnimatedSmoothIndicator(
        effect: const ExpandingDotsEffect(
          dotWidth: 5,
          dotHeight: 5,
          activeDotColor: Colors.blue,
        ),
        activeIndex: activeIndex,
        count: images.length,
      );
}
