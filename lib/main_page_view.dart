import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'friend/friend_view.dart';
import 'newsfeed/newsfeed_view.dart';

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
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: AppBar(
              centerTitle: true,
              iconTheme: new IconThemeData(color: Colors.white),
              title: GestureDetector(
                onTap: () {
                  Toast.show("Show Info Class", context,
                      backgroundColor: Colors.black45,
                      duration: Toast.LENGTH_SHORT,
                      gravity: Toast.BOTTOM);
                  showDialog(
                      context: context,
                      child: SimpleDialog(
                        children: <Widget>[
                          Container(
                            height: 280,
                            child: Center(child: Text("Ở dây sẽ hiện chi tiết của lớp học")),
                          )
                        ],
                      ));
                },

                /// Show detail class
                child: Text(
                  'Lớp Mầm 1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              backgroundColor: Colors.orange,
            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: TabBar(
//                  controller: tabController,
                  unselectedLabelColor: Colors.orange[100],
                  labelColor: Colors.orange,
//                  indicatorWeight: 3,
                  indicatorColor: Colors.orange[400],
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.people,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.library_books,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.chat,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notifications,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: TabBarView(
                  // Tab Bar View
                  physics: BouncingScrollPhysics(),
//                  controller: tabController,
                  children: <Widget>[
                    FriendPage(),
                    NewsfeedPage(),
                    FriendPage(),
                    FriendPage()
                  ],
                ),
              )
            ],
          ),
          endDrawer: Container(
            color: Colors.orange,
            width: 180,
            height: double.infinity,
            child: Drawer(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    height: 68,
                    width: double.infinity,
                    color: Colors.orange,
                    child: Container(
                      child: DrawerHeader(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: Text(
                          'KNP Player',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
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
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo_album,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Album Ảnh',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.library_books,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Đơn Xin Phép',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.child_care,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Danh Sách Trẻ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.calendar_today,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Thời Khóa Biểu',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.camera_alt,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Camera',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.menu,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Thực Dơn',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person_outline,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'My Profile',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.event_note,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Xự Kiện',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.device_hub,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Đổi Lớp',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.help_outline,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Trợ Giúp',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.settings,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Cài Đặt',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // change app state...
                              Navigator.pop(context); // close the drawer
                            },
                            child: Container(
                              color: Colors.orange,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 14, 0, 14),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.settings_power,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Đăng Xuất',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
