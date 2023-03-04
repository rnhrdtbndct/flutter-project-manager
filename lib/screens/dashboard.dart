import 'package:benedictoflutter/widgets/navbar.dart';
import 'package:flutter/material.dart';

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
            child: Text('Dashboard'),
          ),
        )
      ],
    ));
  }
}
