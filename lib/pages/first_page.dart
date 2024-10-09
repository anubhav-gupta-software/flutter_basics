// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_set_literal
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/first_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/second_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/second_page.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [
  HomePage(),
  ProfilePage(),
  SettingsPage(),
];

int _selectedIndex = 0;

void _navigationBottomBar(int index){
  setState(
    ()=>{
      _selectedIndex = index,
    }
  );
  switch(index){
    case 0:
    {print("Successfully loaded HomeScreen");break;}
    case 1:
    {
      print("Successfully Loaded Profile Screen");
      break;
    }
    case 2: 
    {
      print("Successfully Loaded settings page");
    }

  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            //common to place a drawer header here for logo and stuff
            DrawerHeader(
              child:Icon(
                Icons.face,
                size: 48,
                )),
              //homepage
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: ()=>{
                //pop drawer
                Navigator.pop(context),

                  Navigator.pushNamed(context, '/homepage')
                },

              ),
              //settingspage list title
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("S E T T I N G S"),
                onTap: ()=>{
                  Navigator.pushNamed(context, '/settingspage')
                },
              )
          ],
        )
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To Second Page"),
      //     onPressed: (){
      //       //Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
      //       //after using routes
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      //   ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: 'Home',),
          
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          label: 'Profile',),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
          label: 'Settings',),
        ],
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        ),
      );
    
  }
}