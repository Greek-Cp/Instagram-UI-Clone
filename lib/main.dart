import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_clone/model/stastictic_account.dart';
import 'package:instagram_ui_clone/page/page_home.dart';
import 'package:instagram_ui_clone/page/page_myprofile.dart';
import 'package:instagram_ui_clone/page/page_utama.dart';
import 'package:provider/provider.dart';

void main() {
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: "test",
            channelName: "Instagram",
            channelDescription: "basic"),
      ],
      debug: true);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  //learan
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return ChangeNotifierProvider<Account>(
      create: (context) => Account(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: PageUtama.routeName.toString(),
        routes: {
          PageHome.routeName.toString(): (context) => PageHome(),
          PageMyProfile.routeName.toString(): (context) => PageMyProfile(),
          PageUtama.routeName.toString(): (context) => PageUtama()
        },
      ),
    );
  }
}
