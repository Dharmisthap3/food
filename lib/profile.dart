import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var userNameController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isRememberMe = true;

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
         // Center(child:
          //Container(
              //margin: EdgeInsets.only(left:40.0,top:260,right:40,bottom: 50),
              //color: Colors.pinkAccent)
          //),
          Center(
            child: Expanded(

              child: Container(
                margin: EdgeInsets.only(left:40.0,top:100,right:40,bottom: 20),
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Set Your Mobile Number',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: userNameController,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            validator: (value) {
                              if (value != null && value.isEmpty) {
                                return 'Enter User Name';
                              }
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Set Your Email Address',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            obscuringCharacter: '\$',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            validator: (value) {
                              if (value != null &&
                                  value.isEmpty &&
                                  value.length < 5) {
                                return 'Enter Password';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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