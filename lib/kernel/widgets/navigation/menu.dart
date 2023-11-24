import 'package:flutter/material.dart';
import 'package:practica/config/navigation/profile_stack.dart';

import 'package:practica/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:practica/modules/home/adapters/screens/home.dart';
//import 'package:practica/modules/profile/adapaters/screens/profile.dart';
import 'package:practica/modules/reel/adapters/screens/reel.dart';
import 'package:practica/modules/search/adapters/screens/search.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex =0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [Home(), Reels(), Search(),ProfileStack()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTapped:_onItemTapped ,),
    );
  }
}
