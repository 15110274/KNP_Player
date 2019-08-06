import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCDEE3),
      appBar: AppBar(
        automaticallyImplyLeading: true, // back button on actionbar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
//          onPressed:() => Navigator.pop(context, false),
        ),
        title: Text(
          "Tạo bài đăng",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Toast.show("Bấm chọn ảnh", context,
                        backgroundColor: Colors.black45,
                        duration: Toast.LENGTH_SHORT,
                        gravity: Toast.BOTTOM);
                  }, // Open library to choice image
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    width: double.infinity,
                    height: 130,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Chọn ảnh bạn muốn đăng!!!",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(''),

                        /// Show image has choice
                      ],
                    ),
//                  color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),

//
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration.collapsed(hintText: ""),
                    style: TextStyle(fontSize: 20),
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                  ),
                ),

                GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20.0),
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 6,
                  children: <Widget>[
                    const Text(
                      'He\'d have you all unravel at the',
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                    const Text('Heed not the rabble'),
                    const Text('Sound of screams but the'),
                    const Text('Who scream'),
                    const Text('Revolution is coming...'),
                    const Text('Revolution, they...'),
                  ],
                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    GestureDetector(
//                      onTap: () {},
//                      child: Image.asset(
//                        "",
//                        width: 70,
//                        height: 70,
//                        color: Colors.blue,
//                      ),
//                    ),
//                    GestureDetector(
//                      onTap: () {},
//                      child: Image.asset(
//                        "",
//                        width: 70,
//                        height: 70,
//                        color: Colors.blue,
//                      ),
//                    ),
//                    GestureDetector(
//                      onTap: () {},
//                      child: Image.asset(
//                        "",
//                        width: 70,
//                        height: 70,
//                        color: Colors.blue,
//                      ),
//                    ),
//                    GestureDetector(
//                      onTap: () {},
//                      child: Image.asset(
//                        "",
//                        width: 70,
//                        height: 70,
//                        color: Colors.blue,
//                      ),
//                    ),
//                    GestureDetector(
//                      onTap: () {},
//                      child: Image.asset(
//                        "",
//                        width: 70,
//                        height: 70,
//                        color: Colors.blue,
//                      ),
//                    ),
//                  ],
//                ),
                SizedBox(
                  // Design Button
                  height: 56,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.deepOrange,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0)),
                      child: Text(
                        "ĐĂNG BÀI",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
