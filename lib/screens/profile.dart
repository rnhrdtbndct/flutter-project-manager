import 'package:benedictoflutter/screens/login.dart';
import 'package:benedictoflutter/widgets/item_card.dart';
import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:benedictoflutter/widgets/user_profile_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          child: NavBar(index: 2),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            child: UserProfileCard(
              photoURL: FirebaseAuth.instance.currentUser?.photoURL.toString(),
              userFullName:
                  FirebaseAuth.instance.currentUser?.displayName.toString(),
              userEmail: FirebaseAuth.instance.currentUser?.email.toString(),
            ),
          ),
        )
      ],
    ));
  }
}
