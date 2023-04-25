import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/util/color_app.dart';
import 'package:instagram_ui_clone/util/font_size.dart';

class PageMyProfile extends StatelessWidget {
  static String? routeName = "/PageMyProfile";
  /*
    - assets/nav_home_ic.png
    - assets/nav_rels_ic.png
    - assets/icon_add_post.png
    - assets/nav_search_ic.png
    - assets/nav_shop_ic.png
  */
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                  Text(
                    "yanuar_tr",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.sizeUsername),
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
                            "3",
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
                            "2,842",
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
Student Computer Science At Polytechnic State Jember
Focused Area🎯
• Android Native/Hybrid(Flutter,Java,Kotlin)
• Backend Engineer(PHP,Javascript)
              """,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.sizeSubUsrname)),
              Row(
                children: [
                  Transform.rotate(angle: 40, child: Icon(Icons.link)),
                  Text("letscoding.my.id/cv + 2",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.sizeSubUsrname)),
                ],
              ),
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
                              "1.3k accounts reached in the last 30 days.",
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
                child: ListView(
                  children: [cardProfileInstagram("cardProfileInstagram")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardProfileInstagram(String imageUri) {
    return Stack(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFFEE0979), Color(0xFFFF6A00)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Positioned(
          top: 3,
          left: 3,
          child: CircleAvatar(
            radius: 27,
            backgroundImage:
                NetworkImage("https://picsum.photos/id/237/200/300"),
          ),
        ),
      ],
    );
  }
}
