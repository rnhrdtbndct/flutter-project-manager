import 'package:benedictoflutter/screens/dashboard.dart';
import 'package:benedictoflutter/screens/login.dart';
import 'package:benedictoflutter/screens/profile.dart';
import 'package:benedictoflutter/screens/members.dart';
import 'package:benedictoflutter/screens/signup.dart';
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
      title: 'Ateneo de Davao University',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/members': (context) => MembersScreen(),
        '/profile': (context) => ProfileScreen(),
        '/signup': (context) => SignUpScreen(),
      },
    );
  }
}
