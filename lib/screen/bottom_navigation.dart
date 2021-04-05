

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'dashboard.dart';
import 'library.dart';
import 'setting.dart';
import 'client.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();

  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  String _title='Dashboard';


  final List<Widget> _children = [Dashboard(),Library(),Client(),Setting()];
  @override
  Widget build(BuildContext context) {
   /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light, // as you need dark or light
    ));*/

    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(_title),
        automaticallyImplyLeading: false,

       /* actions: <Widget>[
          // Switch(
          //   onChanged: toggleSwitch,
          //   value: isSwitched,
          //   activeColor: Colors.blue,
          //   activeTrackColor: Colors.white,
          //   inactiveThumbColor: Colors.blue,
          //   inactiveTrackColor: Colors.black,
          // )
        ],*/
      ),
      body: _children[_currentIndex], // new

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 10,
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new
          // backgroundColor: Colors.white, //fromARGB(255, 6, 33, 55)
          selectedItemColor: Color.fromARGB(255, 47, 200, 233),
        //  unselectedItemColor: Color.fromARGB(255, 36, 94, 136),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.grid_view),
              title: new Text('Dashboard'),

            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.article_sharp),
              title: new Text('Library'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline_rounded),
                title: Text('Clients')
            ), BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings')
            )
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch(index) {
        case 0: { _title = 'Dashboard'; }
        break;
        case 1: { _title = 'Library'; }
        break;
        case 2: { _title = 'Clients'; }
        break;
        case 3: { _title = 'Settings'; }
        break;

      }
    });
  }
}