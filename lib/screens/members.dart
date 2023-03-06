import 'package:benedictoflutter/models/users.dart';
import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:benedictoflutter/widgets/user_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('members').snapshots();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db.collection("members").get().then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          User user = User(
            id: docSnapshot.id,
            name: docSnapshot.data()['name'],
            username: docSnapshot.data()['username'],
            year_level: docSnapshot.data()['year_level'],
            course: docSnapshot.data()['course'],
          );
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          child: NavBar(index: 1),
        ),
        Expanded(
          child: Center(
            child: Container(
                child: StreamBuilder<QuerySnapshot>(
              stream: _usersStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return LoadingAnimationWidget.staggeredDotsWave(
                      color: Color(0xFF003A6C), size: 50);
                }
                return ResponsiveGridList(
                    maxItemsPerRow: 3,
                    minItemsPerRow: 1,
                    horizontalGridSpacing: 20,
                    verticalGridSpacing: 20,
                    horizontalGridMargin: 50,
                    verticalGridMargin: 50,
                    minItemWidth: 450,
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      User user = User(
                          id: document.id,
                          name: data['name'],
                          username: data['username'],
                          year_level: data['year_level'],
                          course: data['course'],
                          imageURL: data['imageURL']);
                      return UserCard(
                          name: user.name,
                          username: user.username,
                          course: user.course,
                          year_level: user.year_level,
                          imageURL: user.imageURL);
                    }).toList());
              },
            )),
          ),
        )
      ],
    ));
  }
}
