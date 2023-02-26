import 'dart:convert';

import 'package:untitled1/food_delivery1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FoodDelivery2 extends StatefulWidget {
  @override
  State<FoodDelivery2> createState() => _FoodDelivery2State();
}


class _FoodDelivery2State extends State<FoodDelivery2> {
  int _counter3 = 3;

  int _counter1 = 1;

  int _counter2 = 2;

  void _incrementCounter(int _counter) {
    // print('COUNTER:1:$_counter');
    // _counter++;
    // print('COUNTER:1:$_counter');
    if(_counter == 1)
      _counter1++;
    else if(_counter == 2)
      _counter2++;
    else if(_counter == 3)
      _counter3++;
    setState(() {});
  }

  void _decrementCounter(_counter) {
    if(_counter == 1)
      _counter1--;
    else if(_counter == 2)
      _counter2--;
    else if(_counter == 3)
      _counter3--;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(builder: (context, snapshot) {
        return Column(
          children: [
            Text(
              "Cart",
              style: TextStyle(
                fontFamily: "Roboto Bold",
                fontSize: 23,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Monday,February 24",
                    style: TextStyle(
                      fontFamily: "Roboto Bold",
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Text(
                    "(3)",
                    style: TextStyle(
                        fontFamily: "Roboto Bold",
                        fontSize: 15,
                        color: Color.fromARGB(255, 104, 138, 102)),
                  ),
                ),
              ],
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                      CustomeWidget(snapshot.data![index]['image']
                          ,snapshot.data![index]['name'],
                          snapshot.data![index]['price'],
                          snapshot.data![index]['id']
                      )
                  ],
                ),
              );
            },itemCount: snapshot.data!.length)),

            Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(255, 254, 193, 7),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return FoodDesign1();
                  },));
                },
                child: Text(
                  "Checkout",
                  style: TextStyle(
                      fontFamily: "Roboto Bold",
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
            )

          ],
        );
    },future: getWebFromServer(),);
  }
  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Alert!'),
          content: const Text('Are you sure want to delete this record?'),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await deleteData(id);
                  if (res.statusCode == 200) {
                    setState(() {});
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Yes')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No'))
          ],
        );
      },
    );
  }
  Future<List<dynamic>> getWebFromServer() async {
    http.Response response = await http.get(
        Uri.parse("https://63f5cb789daf59d1ad7b7a12.mockapi.io/CartApi"));
    dynamic res2 = jsonDecode(response.body.toString());
    return res2;
  }


  Future<http.Response> deleteData(id) async {
    var response = await http.delete(
        Uri.parse('https://63f5cb789daf59d1ad7b7a12.mockapi.io/CartApi/$id'));

    return response;
  }

  Widget CustomeWidget(imageURL,name,price,id)
  {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image.network(imageURL.toString(),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: "Roboto Bold",
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          _decrementCounter(3);
                        },
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Color.fromARGB(255, 173, 173, 173),
                            fontFamily: "Roboto Bold",
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Text(
                        _counter3.toString(),
                        style: TextStyle(
                          fontFamily: "Roboto Bold",
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          _incrementCounter(3);
                        },
                        child: Text(
                          "+",
                          style: TextStyle(
                            color: Color.fromARGB(255, 173, 173, 173),
                            fontFamily: "Roboto Bold",
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 15.0,
                        height: 15.0,
                        margin: EdgeInsets.fromLTRB(20, 0, 2, 0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/rupee.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text(
                        "$price/-",
                        style: TextStyle(
                          color: Color.fromARGB(255, 173, 173, 173),
                          fontFamily: "Roboto Bold",
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: IconButton(
                      icon:Icon( Icons.disabled_by_default,),


                      color: Color.fromARGB(255, 254, 192, 4),
                          onPressed: () {
                              showDeleteAlert(id);
                                  setState(() {
                                          });
                    },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
