import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:benedictoflutter/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          child: NavBar(index: 1),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            child: UserCard(),
          ),
        )
      ],
    ));
  }
}
