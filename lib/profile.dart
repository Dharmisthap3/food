import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Column(
              children: [
                Expanded(child: Container(
                  alignment: Alignment.center,
                  child: Image.asset("images/background.jpg",fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity),

                ),),
                Expanded(child: Container(color: Colors.white)),
              ]
          ),
          Center(child: Container(
              margin: EdgeInsets.only(left:40.0,top:260,right:40,bottom: 50),
              color: Colors.pinkAccent)
          ),
          Center(

            child: Container(
              margin: EdgeInsets.only(bottom:210),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: Icon(Icons.account_circle,size:105),
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}