import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:benedictoflutter/widgets/project_card.dart';
import 'package:benedictoflutter/widgets/user_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          child: NavBar(index: 0),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              child: ProjectCard()),
        ),
      ],
    ));
  }
}
