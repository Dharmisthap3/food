import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';

class FoodDesign1 extends StatefulWidget {
  @override
  State<FoodDesign1> createState() => _FoodDesign1State();
}

class _FoodDesign1State extends State<FoodDesign1> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color.fromARGB(255, 254, 193, 7),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 254, 193, 7),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: 40,
                          height: 35,
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ));
                              },
                              child: Icon(Icons.arrow_back_ios))),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 7, 0),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.favorite)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30,
                                color: Colors.white,
                                spreadRadius: 0.3)
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(55, 40, 55, 40),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/cassata.jpg"),
                          radius: 130,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Cassata Ice Cream",
                          style: TextStyle(
                              fontFamily: "Roboto Bold",
                              fontSize: 35,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            "A trio of orange, pista and strawberry ice cream layered over the vanilla sponge and garnished with whipped cream & cashews",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Roboto Regular",
                              fontSize: 15,
                              color: Color.fromARGB(255, 143, 143, 143),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          color: Color.fromARGB(255, 245, 245, 245),
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Choose Amount",
                                style: TextStyle(
                                  fontFamily: "Roboto Regular",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                quantity--;
                                setState(() {});
                              },
                              child: Container(
                                width: 34.0,
                                height: 34.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/min.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(quantity.toString()),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                quantity++;
                                setState(() {});
                              },
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 20.0,
                                height: 20.0,
                                margin: EdgeInsets.fromLTRB(20, 0, 5, 0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/rupee.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "250/-",
                                style: TextStyle(
                                    fontFamily: "Roboto Bold",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w200),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromARGB(255, 254, 193, 7),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "ADD To Cart",
                                      style: TextStyle(
                                          fontFamily: "Roboto Regular",
                                          fontSize: 19,
                                          fontWeight: FontWeight.w200,
                                          color: CupertinoColors.label),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
