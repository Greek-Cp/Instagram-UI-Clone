import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:instagram_ui_clone/model/stastictic_account.dart';
import 'package:instagram_ui_clone/util/font_size.dart';
import 'package:provider/provider.dart';

class ViewNotification extends StatefulWidget {
  @override
  State<ViewNotification> createState() => _ViewNotificationState();
}

class _ViewNotificationState extends State<ViewNotification>
    with SingleTickerProviderStateMixin {
  List<Map> myFeed = List.generate(
      100, (index) => {"id": index, "username": Faker().person.name()});

  String imageProfile = "https://i.pravatar.cc/150?img=";
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    // Animasi untuk setiap item
    for (int i = 0; i < myFeed.length; i++) {
      Future.delayed(Duration(milliseconds: 300 * i), () {
        _listKey.currentState!.insertItem(i);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final listFollower = Provider.of<Account>(context);
    List<Map> follower = listFollower.getNotification();
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Notifications",
                  style: TextStyle(fontSize: FontSize.sizeUsername),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              AnimationLimiter(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: PageScrollPhysics(),
                  itemCount: listFollower.getNotification().length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: notificationWidget(
                              follower[index]['id'].toString(),
                              follower[index]['username'].toString()),
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
      ),
    );
  }

  Widget notificationWidget(String idImage, String name) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://i.pravatar.cc/150?img=" + idImage),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$name',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextSpan(
                    text: ' started following you',
                    style: TextStyle(color: Colors.black)),
                TextSpan(text: ' 1s ago', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 20),
          child: ElevatedButton(onPressed: () {}, child: Text("Follow")),
        )
      ],
    );
  }
}
