import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_clone/page/page_home.dart';
import 'package:instagram_ui_clone/page/page_myprofile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  //learan
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      initialRoute: PageMyProfile.routeName.toString(),
      routes: {
        PageHome.routeName.toString(): (context) => PageHome(),
        PageMyProfile.routeName.toString(): (context) => PageMyProfile()
      },
    );
  }
}
