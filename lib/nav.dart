import 'package:agence/MainPage.dart';
import 'package:agence/login/profile/profile.dart';
import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int currentindex = 0;
  List<Widget> screen = [

MyMianPage(),

MyMianPage(),
Profile(),

  ];
  void _listbotton(int index) {
    currentindex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomSheet: screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.house_outlined,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'Acceuil',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.cases_rounded,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'fgfgf',
                backgroundColor: Colors.white),

                            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  size: 19,
                  color: Colors.black,
                ),
                label: 'Profil',
                backgroundColor: Colors.white),
          
          ]),
    );
  }
}
