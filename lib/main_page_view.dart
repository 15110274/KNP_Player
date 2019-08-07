import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPageBody(),
    );
  }
}

class MainPageBody extends StatefulWidget {
  @override
  _MainPageBodyState createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        color: Colors.orange,
        width: 180,
        height: double.infinity,
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.center,
                height: 76,
                width: double.infinity,
                color: Colors.orange,
                child: DrawerHeader(
                  child: Text(
                    'KNP Player',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  color: Colors.orange,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 2,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.photo_album,
                          size: 18,
                          color: Colors.white,
                        ),
                        title: Align(alignment: AlignmentDirectional(-2.5, 0),
                          child: Text(
                            'Album Ảnh',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {
                          // change app state...
                          Navigator.pop(context); // close the drawer
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.photo_album,
                          size: 18,
                          color: Colors.white,
                        ),
                        title: Align(
                          alignment: AlignmentDirectional(-2.5, 0),
                          child: Container(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Đơn Xin Phép',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          // change app state...
                          Navigator.pop(context); // close the drawer
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.photo_album,
                          size: 18,
                          color: Colors.white,
                        ),
                        title: Align(
                          alignment: AlignmentDirectional(-2.5, 0),
                          child: Text(
                            'Thời Khóa Biểu',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {
                          // change app state...
                          Navigator.pop(context); // close the drawer
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lớp Mầm 1',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
