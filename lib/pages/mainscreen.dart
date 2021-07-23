import 'package:flutter/material.dart';
import 'package:untitled/model/navClass.dart';
import 'package:untitled/pages/profilePage.dart';

import '../constants.dart';
import 'cart.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    List<Widget> pageList = <Widget>[
      Cart(),
      HomePage(),
      ProfileSection()
    ];
int _currentIndex = 2;

    return Scaffold(

      body: pageList[NavClass.pageIndex],

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: Colors.white),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind_rounded),
              label: '',

          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
            NavClass.pageIndex = index;
          });
        },
      ),
    );
  }
}
