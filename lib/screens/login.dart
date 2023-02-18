import 'package:benedictoflutter/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFF003A6C),
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 50),
              child: Image.asset('assets/images/arisen-logo.png', fit: BoxFit.contain, width: 75, height: 75),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 450,
              color: Colors.white,
              child: Wrap(
                children: [
                  Center(child: 
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/addu-seal.png', width: 125, height: 125)
                      )
                    ),
                  Center(
                    child: Container(
                      child: Text("ATENEO DE DAVAO UNIVERSITY", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25), textAlign: TextAlign.center,),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Text("Community Center", style: TextStyle(color: Colors.black, fontSize: 15), textAlign: TextAlign.center,),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Text("Asset Management System", style: TextStyle(color: Colors.black, fontSize: 15), textAlign: TextAlign.center,),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(top: 50),
                      child: ElevatedButton.icon(onPressed: (){
                        Navigator.pushNamedAndRemoveUntil(
                          context, '/dashboard', ModalRoute.withName('/'));
                      },
                      label: Text("Login with Google", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      icon: Icon(Icons.mail), 
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF003A6C)),
                      )
                    )
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(top: 10),
                      child: ElevatedButton.icon(onPressed: (){
                        
                      },
                      label: Text("Login as Guest", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      icon: Icon(Icons.people), 
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFE4000F)),
                      )
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}