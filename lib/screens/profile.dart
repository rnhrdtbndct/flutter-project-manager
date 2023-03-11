import 'package:benedictoflutter/screens/login.dart';
import 'package:benedictoflutter/services/firestore_db.dart';
import 'package:benedictoflutter/widgets/item_card.dart';
import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:benedictoflutter/widgets/user_profile_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userData =
        FirestoreDB().usersDB.doc(FirebaseAuth.instance.currentUser?.uid);
    return FutureBuilder<DocumentSnapshot>(
      future: userData.get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (!snapshot.hasData || !snapshot.data!.exists) {
          return Center(child: Text('User not logged in'));
        }
        var data = snapshot.data!.data() as Map<String, dynamic>;
        var userFullName = data['name'].toString();
        var photoURL = data['photoURL'].toString();
        var userEmail = data['email'].toString();
        print("User exists");
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
                    photoURL: photoURL,
                    userFullName: userFullName,
                    userEmail: userEmail,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
