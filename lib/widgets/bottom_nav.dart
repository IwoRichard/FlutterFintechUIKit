// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/market_price_screen.dart';
import '../screens/profile_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';


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
    const MarketPriceScreen(),
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 25),
        selectedLabelStyle: const TextStyle(fontFamily: 'Gotham',fontWeight: FontWeight.w700,fontSize: 13),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Gotham',fontSize: 13,),
        onTap: (index) => setState(()=> currentIndex = index),
        currentIndex: currentIndex,
        items: [
          const BottomNavigationBarItem(
            activeIcon: FaIcon(FontAwesomeIcons.house),
            icon: FaIcon(FontAwesomeIcons.house),
            label: 'Home'
          ),
          const BottomNavigationBarItem(
            activeIcon: Icon(Icons.money_rounded),
            icon: Icon(Icons.money_rounded),
            label: 'Cards'
          ),
          const BottomNavigationBarItem(
            activeIcon: Icon(EvaIcons.barChart),
            icon: Icon(EvaIcons.barChart),
            label: 'Market Price',
          ),
          const BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile'
          ) 
        ],
      ),
    );
  }
}