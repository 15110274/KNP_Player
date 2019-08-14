import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyFriendPage(),
    );
  }
}

class BodyFriendPage extends StatefulWidget {
  @override
  _BodyFriendPageState createState() => _BodyFriendPageState();
}

class _BodyFriendPageState extends State<BodyFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Center(child: Text("Friend Page")),
    );
  }
}
