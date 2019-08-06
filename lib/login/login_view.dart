import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatelessWidget {
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
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 40, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "ic_logologin.png",
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
//                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

//                  labelText: "Email",
//                  labelStyle: TextStyle(color: Colors.white30, fontSize: 18),
                    icon: Icon(Icons.email, color: Colors.orange),
                    hintText: "Email"),
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
//                  labelText: "Password",
//                  labelStyle: TextStyle(color: Colors.white30, fontSize: 18),
                      icon: Icon(
                        Icons.lock,
                        color: Colors.orange,
                      ),
                      hintText: "Password",
                    ),
                  ),
                  Text("SHOW",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Toast.show("Press forgot pass", context,backgroundColor: Colors.black45,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                }, // forgot password funtion
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  color: Colors.deepOrange,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
