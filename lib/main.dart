import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:knp_play/start/start_view.dart';
import 'login/login_view.dart';
import 'package:knp_play/newsfeed/add_post_view.dart';

import 'main_page_view.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xffFF8722));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        hintColor: Colors.grey,
        cursorColor: Colors.orange,
        primarySwatch: Colors.orange,
      ),
      home: MainPage(),
    );
  }
}
