import 'package:flutter/material.dart';

import 'food ui/cardpage.dart';
import 'food ui/favoritepage.dart';
import 'food ui/homepage.dart';
import 'food ui/notification.dart';


class BottombarScreen extends StatefulWidget {
  const BottombarScreen({super.key});

  @override
  State<BottombarScreen> createState() => _BottombarScreenState();
}

class _BottombarScreenState extends State<BottombarScreen> {
  int _selectedTab = 0;
  _changeTab(index){
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:


      _selectedTab == 0
          ? Homepage()
          : _selectedTab == 1
          ? Cart()
          : _selectedTab == 2
          ? Favorite()
          : _selectedTab == 3
          ? Screen()
          : Text("data"),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.explore,size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, size: 30), label: ""),
          ],
        ),



















    );
  }
}

