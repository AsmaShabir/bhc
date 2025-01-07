
import 'package:bhc/view/bhc1/profile.dart';
import 'package:bhc/view/bhc1/project.dart';
import 'package:flutter/material.dart';

import '../../view/bhc2/dashboard.dart';
import '../../view/bhc1/dashboard1.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.orange, // Replace with your app's colors
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardView()));

            },
              child: const Icon(Icons.dashboard, size: 30)),
          label: 'Dashboard',
        ),
         BottomNavigationBarItem(
          icon: InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProjectView()));

            },
              child: Icon(Icons.image, size: 30)),
          label: 'Project Photos',
        ),
         BottomNavigationBarItem(
          icon: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileView()));

              },
              child: Icon(Icons.person, size: 30)),
          label: 'Profile',
        ),
      ],
    );
  }
}
