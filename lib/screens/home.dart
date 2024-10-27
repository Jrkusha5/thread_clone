import 'package:flutter/material.dart';
import 'package:thread/screens/feed.dart';
import 'package:thread/screens/post.dart';
import 'package:thread/screens/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int selectedIndex =0;

    List<Widget> pages=[
     const FeedScreen(),
     const SearchScreen(),
     const PostScreen(),
     const Text('Post'),
     const Text('Post'),
    ];
  @override

  Widget build(BuildContext context) {
   
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
         selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex=index;
          });
        },
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

        ],),
    );
  }
}