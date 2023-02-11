// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final screens= [
    const HomeScreen(),
    const CardScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey,
        iconSize: 20,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 25),
        selectedLabelStyle: const TextStyle(fontFamily: 'Gotham',fontWeight: FontWeight.w700,fontSize: 13),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Gotham',fontSize: 13,),
        onTap: (index) => setState(()=> currentIndex = index),
        currentIndex: currentIndex,
        items: [
          const BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.home_25),
            icon: Icon(Iconsax.home_2),
            label: 'Home'
          ),
          const BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.card5),
            icon: Icon(Iconsax.card),
            label: 'Cards'
          ),
          const BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.profile_tick5),
            icon: Icon(Iconsax.profile_tick4),
            label: 'Profile'
          ) 
        ],
      ),
    );
  }
}