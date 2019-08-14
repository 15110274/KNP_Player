import 'package:flutter/material.dart';

class NewsfeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyNewsfeedPage(),
    );
  }
}

class BodyNewsfeedPage extends StatefulWidget {
  @override
  _BodyNewsfeedPageState createState() => _BodyNewsfeedPageState();
}

class _BodyNewsfeedPageState extends State<BodyNewsfeedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
      child: Center(child: Text("Newsfeed Page")),
    );
  }
}
