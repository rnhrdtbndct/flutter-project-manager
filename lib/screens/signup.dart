import 'package:benedictoflutter/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpScreen> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  String firstName = '';
  String lastName = '';
  String emailAdd = '';
  String profilePictre = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF003A6C),
        child: Center(
          child: Container(
            width: 500,
            height: 750,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Wrap(
                children: [
                  Center(
                      child: Image.asset("assets/images/addu-seal.png",
                          fit: BoxFit.cover, width: 100, height: 100)),
                  Center(
                      child: Text(
                    'Ateneo de Davao University',
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
                  title("Firstname"),
                  TextFormField(
                    onChanged: (value) {
                      setState(() => firstName = value);
                    },
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    ),
                  ),
                  title("Lastname"),
                  TextFormField(
                    onChanged: (value) {
                      setState(() => lastName = value);
                    },
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    ),
                  ),
                  title("Photo URL"),
                  TextFormField(
                    onChanged: (value) {
                      setState(() => profilePictre = value);
                    },
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    ),
                  ),
                  title("Email Address"),
                  TextFormField(
                    onChanged: (value) {
                      setState(() => emailAdd = value);
                    },
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    ),
                  ),
                  title("Password"),
                  TextFormField(
                    onChanged: (value) {
                      setState(() => password = value);
                    },
                    obscureText: _obscureText1,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (_obscureText1 == true) {
                                _obscureText1 = false;
                              } else {
                                _obscureText1 = true;
                              }
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined)),
                    ),
                  ),
                  title("Confirm Password"),
                  TextFormField(
                    onChanged: (value) {
                      setState(() => confirmPassword = value);
                    },
                    obscureText: _obscureText2,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (_obscureText2 == true) {
                                _obscureText2 = false;
                              } else {
                                _obscureText2 = false;
                              }
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined)),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(5),
                    child: registerButton(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    child: cancelButton("/"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container title(String label) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
      ),
      child: Text(
        label,
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }

  ElevatedButton registerButton() {
    return ElevatedButton(
        onPressed: () {
          if (password == confirmPassword) {
            signUp(
                firstName + ' ' + lastName, emailAdd, password, profilePictre);
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
          }
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: Colors.black87)),
            backgroundColor: Color(0xFF2E3E5E)),
        child: Text(
          "Sign Up",
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ));
  }

  ElevatedButton cancelButton(String route) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, route, ModalRoute.withName('/'));
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Colors.red),
        child: Text(
          "Cancel",
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ));
  }
}
