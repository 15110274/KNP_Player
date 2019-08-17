import 'package:flutter/material.dart';

class CreateAlbumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWedget(),
    );
  }
}

class BodyWedget extends StatefulWidget {
  @override
  _BodyWedgetState createState() => _BodyWedgetState();
}

class _BodyWedgetState extends State<BodyWedget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Tạo Album Ảnh",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(hintText: "Tên album"),
                style: TextStyle(
                  fontSize: 20,
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 8,),
              Container(
                height: 250,
                color: Colors.cyan,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Align(alignment: Alignment.centerLeft,
                  child: Text(
                    "Thêm ảnh",style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              RaisedButton(
                color: Colors.white70,
                highlightColor: Colors.orange,
                hoverColor: Colors.transparent,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Icon(
                          Icons.add,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        "Chọn ảnh",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: LinearProgressIndicator(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Tải lên",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    color: Colors.deepOrange,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(40.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
