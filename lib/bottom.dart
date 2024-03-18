// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'app.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int CurrentIndex = 0;
  List<Widget> Children = [App(), App(), App(), App()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Children[CurrentIndex],
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomNavigationBar(
          selectedItemColor: Color(0xff62b3a2),
          unselectedItemColor: Color(0xff62b3a2),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          currentIndex: CurrentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              CurrentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CurrentIndex == 0 ? LineIcons.home : LineIcons.home,
                    size: 25.0),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                    CurrentIndex == 1
                        ? LineIcons.shoppingBasket
                        : LineIcons.shoppingBasket,
                    size: 25.0),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(CurrentIndex == 2 ? LineIcons.bell : LineIcons.bell,
                    size: 25.0),
                label: "Notif"),
            BottomNavigationBarItem(
                icon: Icon(CurrentIndex == 3 ? LineIcons.user : LineIcons.user,
                    size: 25.0),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
