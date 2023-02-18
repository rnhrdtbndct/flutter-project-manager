import 'package:benedictoflutter/screens/dashboard.dart';
import 'package:benedictoflutter/screens/login.dart';
import 'package:benedictoflutter/widgets/itemCard.dart';
import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginScreen(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}