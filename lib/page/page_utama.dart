import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/page/page_home.dart';
import 'package:instagram_ui_clone/page/page_myprofile.dart';
import 'package:instagram_ui_clone/page/page_notify_fllower.dart';
import 'package:instagram_ui_clone/page/page_search.dart';

class PageUtama extends StatefulWidget {
  static String? routeName = "/PageUtama";

  @override
  State<PageUtama> createState() => _PageUtamaState();
}

class _PageUtamaState extends State<PageUtama> {
  int currentIndex = 0;
  final tabsPage = [
    PageHome(),
    PageSearch(),
    PageMyProfile(),
    ViewNotification(),
    PageMyProfile()
  ];
  // "https://instagram.fsub6-7.fna.fbcdn.net/v/t51.2885-19/342727342_792193859004866_8324550318061912202_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fsub6-7.fna.fbcdn.net&_nc_cat=102&_nc_ohc=Y_viWzPujSkAX83zKKi&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfBadfTqUzVMw6yBB32gL9Q7nVfHgkySwxd_lKZjUwZEEQ&oe=644CCA95&_nc_sid=1527a3"
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabsPage[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/nav_home_ic.png"),
                color: Colors.black,
              ),
              label: "a"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/nav_search_ic.png"),
                color: Colors.black,
              ),
              label: "b"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/nav_rels_ic.png"),
                color: Colors.black,
              ),
              label: "c"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon_nav_like.png"),
                color: Colors.black,
              ),
              label: "c"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage("assets/profile_ic.jpg"),
                radius: 17,
              ),
              label: "c"),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
