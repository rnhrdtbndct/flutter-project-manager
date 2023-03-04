import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 350,
          decoration: BoxDecoration(
            color: Color(0xFF003A6C),
          ),
          child: Wrap(children: [
            Center(
              child: Container(
                  width: 250,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/iphone.png'), fit: BoxFit.contain))),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20),
                child: Text(
                  'iPhone 14 Pro Max',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  textAlign: TextAlign.left,
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Gadget',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.blue[400])),
                textAlign: TextAlign.left,
              )),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text(
                'Ceramic Shield front, Textured matte glass back and, stainless steel design',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white)),
                textAlign: TextAlign.left,
              )),
            Container(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {
                  
                },
                padding: EdgeInsets.only(top: 20, right: 20),
                icon: Icon(Icons.shopping_cart, color: Colors.white,)),
            ),
          ]),
        ),
      ),
    );
  }
}
