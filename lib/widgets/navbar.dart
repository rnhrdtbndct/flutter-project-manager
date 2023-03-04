import 'package:benedictoflutter/screens/members.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sidebarx/sidebarx.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.index,
  });

  final index;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      showToggleButton: false,
      controller: SidebarXController(selectedIndex: index, extended: true),
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: canvasColor,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/addu-seal-white.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Dashboard',
          onTap: () => Navigator.pushNamedAndRemoveUntil(
              context, '/dashboard', ModalRoute.withName('/')),
        ),
        SidebarXItem(
          icon: Icons.people,
          label: 'Members',
          onTap: () => Navigator.pushNamedAndRemoveUntil(
            context,
            '/members',
            ModalRoute.withName('/'),
          ),
        ),
        SidebarXItem(
          icon: Icons.person,
          label: 'Profile',
          onTap: () => Navigator.pushNamedAndRemoveUntil(
            context,
            '/profile',
            ModalRoute.withName('/'),
          ),
        ),
      ],
      footerItems: [
        SidebarXItem(
          icon: Icons.door_back_door_sharp,
          label: 'Logout',
          onTap: () => Navigator.pushNamedAndRemoveUntil(
            context,
            '/',
            ModalRoute.withName('/'),
          ),
        ),
      ],
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Dashboard';
    case 1:
      return 'Members';
    case 2:
      return 'Profile';
    default:
      return 'Not found page';
  }
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF003A6C);
const scaffoldBackgroundColor = Colors.white;
const accentCanvasColor = Colors.black;
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
