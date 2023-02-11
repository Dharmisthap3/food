import 'package:flutter/material.dart';
import 'package:untitled1/food_delivery1.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Color.fromARGB(255, 250, 249, 246),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Image.asset(
                    "assets/images/chef_hat.png",
                  ),
                ),
                Expanded(
                  child: Text(
                    "FoodDaddy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto Bold",
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.amber,
                  size: 30,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(10, 20, 20, 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("images/vectorpizza.jpg",
                              width: 57, height: 57),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "Pizza",
                              style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "23 Kinds",
                              style: TextStyle(
                                  fontFamily: "Roboto Regular",
                                  fontSize: 10,
                                  color: Colors.black45),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/cupcake.jpg",
                            width: 57,
                            height: 57,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "Dessert",
                              style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "90 Kinds",
                              style: TextStyle(
                                  fontFamily: "Roboto Regular",
                                  fontSize: 10,
                                  color: Colors.black45),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 10, 0, 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/shake.jpg",
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "Shakes",
                              style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "30 Kinds",
                              style: TextStyle(
                                  fontFamily: "Roboto Regular",
                                  fontSize: 10,
                                  color: Colors.black45),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/pasta.jpg",
                            width: 57,
                            height: 57,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "Pasta",
                              style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "15 Kinds",
                              style: TextStyle(
                                  fontFamily: "Roboto Regular",
                                  fontSize: 10,
                                  color: Colors.black45),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Icon(
                        Icons.label,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      "Today's Deals",
                      style: TextStyle(
                          fontFamily: "Roboto Bold",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.fromLTRB(10, 0, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/burger.jpg",
                              height: 160,
                              width: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Salmon Burgers",
                            style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 8, 7, 8),
                            child: Row(
                              children: [
                                for (var i = 0; i < 3; i++)
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                for (var i = 0; i < 2; i++)
                                  Icon(Icons.star_border,
                                      color: Colors.amber),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "(3.0)",
                                  style: TextStyle(
                                      fontFamily: "Roboto Regular",
                                      fontSize: 10,
                                      color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 15.0,
                                height: 15.0,
                                margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/rupee.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "90/-",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto Bold",
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.add_box_rounded,
                                color: Colors.amber,
                                size: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDesign1(),
                            ));
                      },


                      child: Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 15),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "images/cassata.jpg",
                                height: 160,
                                width: 160,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Cassata Ice Cream",
                              style: TextStyle(
                                  fontFamily: "Roboto Bold",
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 8, 7, 8),
                              child: Row(
                                children: [
                                  for (var i = 0; i < 4; i++)
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  Icon(Icons.star_border,
                                      color: Colors.amber),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "(4.0)",
                                    style: TextStyle(
                                        fontFamily: "Roboto Regular",
                                        fontSize: 10,
                                        color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 15.0,
                                  height: 15.0,
                                  margin: EdgeInsets.fromLTRB(5, 0, 2, 0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/rupee.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Text(
                                  "250/-",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto Bold",
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Icon(
                                  Icons.add_box_rounded,
                                  color: Colors.amber,
                                  size: 30,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Icon(
                        Icons.stars_rounded,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      "Popular Items",
                      style: TextStyle(
                          fontFamily: "Roboto Bold",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.fromLTRB(10, 8, 20, 15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/mpizza.jpg",
                              height: 160,
                              width: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Margherita Pizza",
                            style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 8, 7, 8),
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                Icon(Icons.star_half, color: Colors.amber),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "(4.5)",
                                  style: TextStyle(
                                      fontFamily: "Roboto Regular",
                                      fontSize: 10,
                                      color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 15.0,
                                height: 15.0,
                                margin: EdgeInsets.fromLTRB(5, 0, 2, 0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/rupee.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "150/-",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto Bold",
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.add_box_rounded,
                                color: Colors.amber,
                                size: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(0, 8, 20, 15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/spaghetti.jpg",
                              height: 160,
                              width: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Spaghetti",
                            style: TextStyle(
                                fontFamily: "Roboto Bold",
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 8, 7, 8),
                            child: Row(
                              children: [
                                for (var i = 0; i < 3; i++)
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                Icon(Icons.star_half, color: Colors.amber),
                                Icon(Icons.star_border, color: Colors.amber),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "(3.5)",
                                  style: TextStyle(
                                      fontFamily: "Roboto Regular",
                                      fontSize: 10,
                                      color: Colors.black45),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 15.0,
                                height: 15.0,
                                margin: EdgeInsets.fromLTRB(5, 0, 2, 0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/rupee.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "110/-",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto Bold",
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.add_box_rounded,
                                color: Colors.amber,
                                size: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}