import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget{
  const Home({super.key});

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
            backgroundColor: const Color.fromARGB(255, 250, 249, 246),
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
                const Expanded(
                  child: Text(
                    "FoodDaddy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto Bold",
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),),
                const Icon(
                  Icons.shopping_cart,
                  color: Colors.amber,
                  size: 30,
                )
              ],
            ),
          ),
          SingleChildScrollView
            (
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("images/vectorpizza.jpg",
                              width: 57, height: 57),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: const [
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
                  margin: const EdgeInsets.fromLTRB(0, 20, 20, 20),
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
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: const [
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
                  margin: const EdgeInsets.fromLTRB(0, 20, 20, 20),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(3, 10, 0, 10),
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
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: const [
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
                  margin: const EdgeInsets.fromLTRB(0, 20, 20, 20),
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
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: const [
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
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: const Icon(
                        Icons.label,
                        color: Colors.amber,
                      ),
                    ),
                    const Text(
                      "Today's Deals",
                      style: TextStyle(
                          fontFamily: "Roboto Bold",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                future: getWebFromServer(),
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    return Row(
                      children: [
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                          child: FutureBuilder<http.Response>(
                            future: getWebFromServer(),
                            builder:(context, snapshot) {
                              if (snapshot.hasData){
                                return  Card(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          "https://5.imimg.com/data5/XS/OV/MY-24799025/cassata-ice-cream-500x500.jpg",
                                          height: 160,
                                          width: 160,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        (jsonDecode(
                                            snapshot.data!.body.toString())[1]
                                        ['name']),
                                        style: const TextStyle(
                                            fontFamily: "Roboto Bold",
                                            fontSize: 15,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(10, 8, 7, 8),
                                        child: Row(
                                          children: [
                                            for (var i = 0; i < 3; i++)
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            for (var i = 0; i < 2; i++)
                                              const Icon(Icons.star_border,
                                                  color: Colors.amber),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              (jsonDecode(
                                                  snapshot.data!.body.toString())[1]
                                              ['Reating']),
                                              style: const TextStyle(
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
                                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/rupee.jpg"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                          Text(
                                            (jsonDecode(
                                                snapshot.data!.body.toString())[1]
                                            ['price']),
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Roboto Bold",
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          const Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.amber,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );

                              }
                              else{
                                return const CircularProgressIndicator();
                              }
                            },
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                          child: FutureBuilder<http.Response>(
                            future: getWebFromServer(),
                            builder:(context, snapshot) {
                              if (snapshot.hasData){
                                return  Card(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          "https://th.bing.com/th/id/OIP.freeAs4GaE990jXQ_9VYSgHaFj?w=225&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                                          height: 160,
                                          width: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        (jsonDecode(
                                            snapshot.data!.body.toString())[2]
                                        ['name']),
                                        style: const TextStyle(
                                            fontFamily: "Roboto Bold",
                                            fontSize: 15,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(10, 8, 7, 8),
                                        child: Row(
                                          children: [
                                            for (var i = 0; i < 3; i++)
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            for (var i = 0; i < 2; i++)
                                              const Icon(Icons.star_border,
                                                  color: Colors.amber),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              (jsonDecode(
                                                  snapshot.data!.body.toString())[2]
                                              ['Reating']),
                                              style: const TextStyle(
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
                                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/rupee.jpg"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                          Text(
                                            (jsonDecode(
                                                snapshot.data!.body.toString())[2]
                                            ['price']),
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Roboto Bold",
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          const Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.amber,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );

                              }
                              else{
                                return const CircularProgressIndicator();
                              }
                            },
                          ),
                        ),
                      ],
                    );
                  }
                  else{
                    return const CircularProgressIndicator();
                  }
                },

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: const Icon(
                        Icons.stars_rounded,
                        color: Colors.amber,
                      ),
                    ),
                    const Text(
                      "Popular Items",
                      style: TextStyle(
                          fontFamily: "Roboto Bold",
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                future: getWebFromServer(),
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    return  Row(
                      children: [
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                          child: FutureBuilder<http.Response>(
                            future: getWebFromServer(),
                            builder:(context, snapshot) {
                              if (snapshot.hasData){
                                return  Card(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          "https://th.bing.com/th/id/OIP.BkBL95DeCWKnEUapHHvNdgHaLH?w=203&h=304&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                                          height: 160,
                                          width: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        (jsonDecode(
                                            snapshot.data!.body.toString())[3]
                                        ['name']),
                                        style: const TextStyle(
                                            fontFamily: "Roboto Bold",
                                            fontSize: 15,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(10, 8, 7, 8),
                                        child: Row(
                                          children: [
                                            for (var i = 0; i < 3; i++)
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            for (var i = 0; i < 2; i++)
                                              const Icon(Icons.star_border,
                                                  color: Colors.amber),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              (jsonDecode(
                                                  snapshot.data!.body.toString())[3]
                                              ['Reating']),
                                              style: const TextStyle(
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
                                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/rupee.jpg"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                          Text(
                                            (jsonDecode(
                                                snapshot.data!.body.toString())[3]
                                            ['price']),
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Roboto Bold",
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          const Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.amber,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );

                              }
                              else{
                                return const CircularProgressIndicator();
                              }
                            },
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                          child: FutureBuilder<http.Response>(
                            future: getWebFromServer(),
                            builder:(context, snapshot) {
                              if (snapshot.hasData){
                                return  Card(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 20, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          "https://th.bing.com/th/id/OIP.-WMY3HHVKNovFNnc850LSAAAAA?pid=ImgDet&w=474&h=474&rs=1",
                                          height: 160,
                                          width: 160,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        (jsonDecode(
                                            snapshot.data!.body.toString())[6]
                                        ['name']),
                                        style: const TextStyle(
                                            fontFamily: "Roboto Bold",
                                            fontSize: 15,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(10, 8, 7, 8),
                                        child: Row(
                                          children: [
                                            for (var i = 0; i < 3; i++)
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            for (var i = 0; i < 2; i++)
                                              const Icon(Icons.star_border,
                                                  color: Colors.amber),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              (jsonDecode(
                                                  snapshot.data!.body.toString())[6]
                                              ['Reating']),
                                              style: const TextStyle(
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
                                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/rupee.jpg"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                          Text(
                                            (jsonDecode(
                                                snapshot.data!.body.toString())[6]
                                            ['price']),
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Roboto Bold",
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          const Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.amber,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );

                              }
                              else{
                                return const CircularProgressIndicator();
                              }
                            },
                          ),
                        ),
                      ],
                    );
                  }
                  else{
                    return const CircularProgressIndicator();
                  }
                },

              ),
            ],
          ),
        ],
      ),
    );
  }
  Future<http.Response> getWebFromServer() async {
    var response = await http.get(
        Uri.parse("https://63f5cb789daf59d1ad7b7a12.mockapi.io/Food"));
    return response;
  }
}