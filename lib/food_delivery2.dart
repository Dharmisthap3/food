import 'package:untitled1/food_delivery1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    print('COUNTER::$_counter3');
    return SingleChildScrollView(
      child: Column(
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
                      child: Image.network('https://th.bing.com/th/id/OIP.XEh_-wsbPoVHZKHpv9Q_8gHaEi?w=312&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7',
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
                      "Salmon Burgers",
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
                          "90/-",
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


                        color: Color.fromARGB(255, 254, 192, 4), onPressed: () {

                      },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
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
                      child: Image.network('https://th.bing.com/th/id/OIP.-WMY3HHVKNovFNnc850LSAAAAA?pid=ImgDet&w=474&h=474&rs=1',
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
                      "Garlic Bread",
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
                            _decrementCounter(1);
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
                          _counter1.toString(),
                          style: TextStyle(
                            fontFamily: "Roboto Bold",
                            fontSize: 17,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _incrementCounter(1);
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
                                image: AssetImage("assets/images/rupee.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Text(
                          "100/-",
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


                        color: Color.fromARGB(255, 254, 192, 4), onPressed: () {

                      },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
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
                      child: Image.network('https://th.bing.com/th/id/OIP.BkBL95DeCWKnEUapHHvNdgHaLH?w=203&h=304&c=7&r=0&o=5&dpr=1.3&pid=1.7',
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
                      "Mint Shake",
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
                            _decrementCounter(2);
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
                          _counter2.toString(),
                          style: TextStyle(
                            fontFamily: "Roboto Bold",
                            fontSize: 17,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _incrementCounter(2);
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
                          width: 9.0,
                          height: 15.0,
                          margin: EdgeInsets.fromLTRB(20, 0, 1, 0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/rupee.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Text(
                          "100/-",
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


                        color: Color.fromARGB(255, 254, 192, 4), onPressed: () {

                      },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Total:",
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 173, 173),
                    fontFamily: "Roboto Bold",
                    fontSize: 19,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 190,
                  ),
                  Container(
                    width: 15.0,
                    height: 17.0,
                    margin: EdgeInsets.fromLTRB(20, 0, 2, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/rupee.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    "350/-",
                    style: TextStyle(
                      fontFamily: "Roboto Bold",
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
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
      ),
    );
  }

}
