import 'package:flutter/material.dart';
import 'package:my_instagram/screens/add_post.dart';

import 'package:my_instagram/screens/my_page.dart';
import 'package:my_instagram/screens/new_home.dart';
import 'package:my_instagram/screens/reel_page.dart';
import 'package:my_instagram/screens/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages =[
    NewHome(),
    SearchPage(),
    AddPost(),
    ReelPage(),
    MyPage(),
   
  ];
  int currentIndex=0;
  void pap (int index){
    setState(() {
      currentIndex =index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: pap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,


        elevation: 0,
        selectedItemColor: Colors.black54,

        items: [
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.home_filled,color:
          Colors.black,)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search,color:
          Colors.black,)),
          BottomNavigationBarItem(label:"Add Post",icon: Icon(Icons.add_box_outlined,color:
          Colors.black,)),
          BottomNavigationBarItem(label:"Reel",icon: Icon(Icons.video_collection,color:
          Colors.black,)),
          BottomNavigationBarItem(label:"My Page",icon: Icon(Icons.person_2_rounded,color:
          Colors.black,)),

        ],

      ),
    );
  }
}
