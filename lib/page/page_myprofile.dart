import 'dart:async';
import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:bottom_bar_matu/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui_clone/model/stastictic_account.dart';
import 'package:instagram_ui_clone/util/color_app.dart';
import 'package:instagram_ui_clone/util/font_size.dart';
import 'package:provider/provider.dart';

class PageMyProfile extends StatefulWidget {
  static String? routeName = "/PageMyProfile";

  @override
  State<PageMyProfile> createState() => _PageMyProfileState();
}

class _PageMyProfileState extends State<PageMyProfile> {
  /*
    - assets/nav_home_ic.png
    - assets/nav_rels_ic.png
    - assets/icon_add_post.png
    - assets/nav_search_ic.png
    - assets/nav_shop_ic.png
  */
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((value) => {
          if (!value)
            {AwesomeNotifications().requestPermissionToSendNotifications()}
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int fol = 0;
    final provider = Provider.of<Account>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.setFollower();
                      provider.randomNotification();
                    },
                    child: Text(
                      "yanuar_tr",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.sizeUsername),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "assets/verified.png",
                    width: 25,
                    height: 25,
                  ),
                  Expanded(child: Container()),
                  ImageIcon(AssetImage("assets/icon_add_post.png")),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://instagram.fsub6-7.fna.fbcdn.net/v/t51.2885-19/342727342_792193859004866_8324550318061912202_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fsub6-7.fna.fbcdn.net&_nc_cat=102&_nc_ohc=Y_viWzPujSkAX83zKKi&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfBadfTqUzVMw6yBB32gL9Q7nVfHgkySwxd_lKZjUwZEEQ&oe=644CCA95&_nc_sid=1527a3"),
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "${myFeed.length}",
                            style: TextStyle(
                                fontSize: FontSize.sizeUsername - 10,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                fontSize: FontSize.sizeUsername - 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "${provider.getFollower()}",
                            style: TextStyle(
                                fontSize: FontSize.sizeUsername - 10,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontSize: FontSize.sizeUsername - 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "207",
                            style: TextStyle(
                                fontSize: FontSize.sizeUsername - 10,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontSize: FontSize.sizeUsername - 10,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "yanuar_tr",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.sizeSubUsrname),
              ),
              Text(
                "Education",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: ColorApp.colorDescription,
                    fontSize: FontSize.sizeSubUsrname),
              ),
              Text(""" 
Student Computer Science
Focused Area🎯
• Android Native/Hybrid(Flutter,Java,Kotlin)
• Backend Engineer(PHP,Javascript)
              """,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.sizeSubUsrname)),
              // Row(
              //   children: [
              //     Transform.rotate(angle: 40, child: Icon(Icons.link)),
              //     Text("letscoding.my.id/cv + 2",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: FontSize.sizeSubUsrname)),
              //   ],
              // ),
              SizedBox(
                width: double.infinity,
                child: Expanded(
                  child: Card(
                    elevation: 0,
                    color: Color.fromARGB(255, 239, 239, 239),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Professional dashboard",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontSize.sizeSubUsrname),
                            ),
                            Text(
                              "596k accounts reached in the last 30 days.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: ColorApp.colorDescription,
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.sizeSubUsrname),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 239, 239, 239))),
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.sizeSubUsrname),
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 239, 239, 239))),
                    onPressed: () {},
                    child: Text(
                      "Share Profile",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.sizeSubUsrname),
                    ),
                  )),
                  Card(
                    elevation: 0,
                    color: Color.fromARGB(255, 239, 239, 239),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: myFeed.length,
                  itemBuilder: (context, index) {
                    return cardProfileInstagram(index.toString(), "Text Story");
                  },
                ),
              ),
              componentBottom()
            ],
          ),
        ),
      ),
    );
  }

  String imageBaseFeed = "https://picsum.photos/id/";

  String reso = "1080/1080";

  Widget cardProfileInstagram(String ImageUri, String textStory) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFFEE0979), Color(0xFFFF6A00)],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipOval(
                  child: Center(
                      child: Image.network(
                          "https://i.pravatar.cc/150?img=" + ImageUri))),
            ),
          ),
          Center(
              child: Text(
            " Post ${ImageUri.toInt() + 1}",
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }

  List<Map> myFeed = List.generate(
      100,
      (index) => {
            "id": Random().nextInt(25) + 1,
          });

  Widget componentBottom() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage("assets/ic_nav_my_feed.png"),
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ImageIcon(
                AssetImage("assets/nav_rels_ic.png"),
                size: 30,
                color: Colors.grey,
              ),
            ),
            ImageIcon(
              AssetImage("assets/ic_nav_my_profile.png"),
              size: 30,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        GridView.builder(
          physics: PageScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
          itemBuilder: (context, index) {
            return Container(
              child: Image.network(imageBaseFeed +
                  "/" +
                  myFeed[index]['id'].toString() +
                  "/" +
                  reso),
            );
          },
          itemCount: myFeed.length,
        )
      ],
    );
  }
}
