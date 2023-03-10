import 'package:benedictoflutter/firebase_options.dart';
import 'package:benedictoflutter/screens/dashboard.dart';
import 'package:benedictoflutter/screens/login.dart';
import 'package:benedictoflutter/screens/profile.dart';
import 'package:benedictoflutter/screens/members.dart';
import 'package:benedictoflutter/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/members': (context) => const MembersScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}
