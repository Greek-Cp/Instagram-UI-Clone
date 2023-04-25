import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/model/model_feed.dart';
import 'package:instagram_ui_clone/model/user.dart';
import 'package:instagram_ui_clone/util/color_app.dart';
import 'package:instagram_ui_clone/util/font_size.dart';

class PageHome extends StatelessWidget {
  static String routeName = "/PageHome";
  List<User> listUser = [
    User("alicia", "1"),
    User("robert", "2"),
    User("bernad", "3"),
    User("rodrigu", "4"),
    User("oshiete", "5"),
    User("johndoe", "${Random().nextInt(50)}"),
    User("janedoe", "${Random().nextInt(50)}"),
    User("jimmychoo", "${Random().nextInt(50)}"),
    User("sarahrhodes", "${Random().nextInt(50)}"),
    User("michaeljordan", "${Random().nextInt(50)}"),
    User("johncena", "${Random().nextInt(50)}"),
    User("kurtangle", "${Random().nextInt(50)}"),
    User("the_rock", "${Random().nextInt(50)}"),
    User("triple_h", "${Random().nextInt(50)}"),
    User("stone_cold", "${Random().nextInt(50)}"),
    User("undertaker", "${Random().nextInt(50)}"),
    User("shawnmichaels", "${Random().nextInt(50)}"),
    User("ricflair", "${Random().nextInt(50)}"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorApp.colorBg,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ImageIcon(
                    AssetImage("assets/icon_add_post.png"),
                    size: 30,
                  ),
                  ImageIcon(
                    AssetImage("assets/icon_logo_instagram.png"),
                    size: 90,
                  ),
                  ImageIcon(AssetImage("assets/icon_messenger.png")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listUser.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: cardProfileInstagram(
                          listUser[index].nameProfile.toString(),
                          listUser[index].imageLink.toString()),
                    );
                  },
                ),
              ),
            ),
            ListView.builder(
              itemCount: feedList.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return cardProfileFeed(
                    feedList[index].username.toString(),
                    feedList[index].imageIndex.toString(),
                    feedList[index].descText.toString(),
                    feedList[index].timeUp.toString(),
                    feedList[index].name.toString(),
                    feedList[index].imagePost.toString());
              },
            )
          ],
        ),
      ),
    );
  }

  String imageBase = "https://i.pravatar.cc/150?img=";

  String imageBaseFeed = "https://picsum.photos/id/";
  String reso = "1080/1080";

  List<ModelFeed> feedList = [
    ModelFeed(
      "johnsmith",
      "6 hours ago",
      "15",
      "Menikmati keindahan sunset di pantai bersama keluarga. Sungguh luar biasa!",
      "${Random().nextInt(20) + 1}",
      "John Smith",
    ),
    ModelFeed(
      "janetdoe",
      "2 days ago",
      "7",
      "Makan malam romantis bersama pasangan di restoran yang indah. Terima kasih sudah menemaniku.",
      "${Random().nextInt(20) + 1}",
      "Janet Doe",
    ),
    ModelFeed(
      "billythompson",
      "3 days ago",
      "12",
      "Akhirnya selesai menyelesaikan tugas akhirku! Perjalanan yang panjang tapi sangat menyenangkan dan bermanfaat.",
      "${Random().nextInt(20) + 1}",
      "Billy Thompson",
    ),
    ModelFeed(
      "carolinepark",
      "5 days ago",
      "3",
      "Menghadiri pesta pernikahan sahabatku. Kamu sangat cantik di hari istimewamu!",
      "${Random().nextInt(20) + 1}",
      "Caroline Park",
    ),
    ModelFeed(
      "davidmiller",
      "1 week ago",
      "19",
      "Mengeksplorasi kota yang belum pernah kumengunjungi sebelumnya. Menemukan banyak hal menarik!",
      "${Random().nextInt(20) + 1}",
      "David Miller",
    ),
    ModelFeed(
      "laurabrown",
      "1 week ago",
      "10",
      "Membuat kue bersama anak-anak di hari Minggu. Sedikit berantakan tapi sangat menyenangkan!",
      "${Random().nextInt(20) + 1}",
      "Laura Brown",
    ),
    ModelFeed(
      "mitchellturner",
      "2 weeks ago",
      "2",
      "Memperkenalkan produk terbaru kami di konferensi industri. Sambutan yang luar biasa dari para peserta!",
      "${Random().nextInt(20) + 1}",
      "Mitchell Turner",
    ),
    ModelFeed(
      "katiejones",
      "2 weeks ago",
      "16",
      "Menerima penghargaan prestasi tertinggi di kantor. Terima kasih atas dukungan dan bantuan kalian semua!",
      "${Random().nextInt(20) + 1}",
      "Katie Jones",
    ),
    ModelFeed(
      "peterlee",
      "3 weeks ago",
      "6",
      "Menjelajahi gunung tertinggi di daerahku. Pemandangan yang tak terlupakan!",
      "${Random().nextInt(20) + 1}",
      "Peter Lee",
    ),
    ModelFeed(
      "rebeccawhite",
      "4 weeks ago",
      "14",
      "Membaca buku inspiratif tentang perjalanan hidup seseorang. Membuatku merenungkan banyak hal.",
      "${Random().nextInt(20) + 1}",
      "Rebecca White",
    ),
  ];
  Widget cardProfileInstagram(String nameProfile, String imageUri) {
    return Stack(
      children: [
        Container(
          width: 65,
          height: 65,
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
          top: 2,
          left: 2,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageBase + imageUri),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 15,
          child: Text(
            nameProfile,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

/*
  - assets/icon_like.png
    - assets/icon_comment.png
    - assets/icon_send.png
    
    */
  Widget cardProfileFeed(String username, String pictureUri,
      String descriptionText, String timeUpload, String name, String imgPost) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageBase + pictureUri),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$username",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "$timeUpload",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  ImageIcon(AssetImage("assets/circle_menu.png"))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      imageBaseFeed + "/" + imgPost + "/" + reso)),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ImageIcon(
                    AssetImage("assets/icon_like.png"),
                  ),
                  ImageIcon(
                    AssetImage("assets/icon_comment.png"),
                  ),
                  ImageIcon(
                    AssetImage("assets/icon_send.png"),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  ImageIcon(
                    AssetImage("assets/ic_save.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Liked by",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    " $username ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " and ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "others",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "$descriptionText",
                style: TextStyle(
                    fontSize: 18,
                    color: ColorApp.colorDescription,
                    overflow: TextOverflow.ellipsis),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
