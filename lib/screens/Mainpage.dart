import 'dart:math';

import 'package:flutter/material.dart';
import 'package:coffee_shop/models/info.dart';
import 'package:coffee_shop/models/data.dart';
class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  


  final String pic1 =
      'https://images.unsplash.com/photo-1555507036-ab1f4038808a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFrZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1600&q=60';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      shrinkWrap: true,
      children: [
        _ad(),
        _top(),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return Material(
                    borderRadius: BorderRadius.circular(12.0),
                    elevation: 20,
                    child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 200,
                        width: 170,
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                                image:
                    DecorationImage(image: NetworkImage(data[i]['pic'].toString()), fit: BoxFit.cover),
                              ),
                            )),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                    _text(
                        text: "${data[i]['food_name']}".toString(),
                        size: 17.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.black),
                    Row(
                      children:[
                      const  Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                     const   Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                      const  Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                      const  Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                        _text(
                            text: '+'+data[i]['plus_number'].toString(),
                            color: Colors.black,
                            size: 20,
                            fontWeight: FontWeight.w300)
                      ],
                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  );
                },)),
        _advertisement(),
        SizedBox(height: 20,),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: data.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (_, __) {
                return Material(
                  borderRadius: BorderRadius.circular(12.0),
                  elevation: 20,
                  shadowColor: Colors.black,
                  child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 200,
                      width: 170,
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                              ),
                              image:
                    DecorationImage(image: NetworkImage(data[__]['pic'].toString()), fit: BoxFit.cover),
                            ),
                          )),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0))),
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _text(
                        text: "${data[__]['food_name']}".toString(),
                        size: 17.0,
                        fontWeight: FontWeight.w100,
                        color: Colors.black),
                    Row(
                      children: [
                        Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          color: Colors.amber,
                        ),
                        _text(
                            text: '+'+data[__]['plus_number'].toString(),
                            color: Colors.black,
                            size: 20,
                            fontWeight: FontWeight.w300)
                      ],
                    )
                  ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                );
              }),
        )
      ],
    );
  }

  Container _advertisement() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurpleAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.redeem_outlined,
            color: Colors.white,
            size: 100,
          ),
          _text(
              text: "Get 20 credits for\n inviting a friend",
              size: 30,
              fontWeight: FontWeight.w600),
          _text(
              text:
                  "Enter a friends email address and when\n  they add credits you will get 20 credits\n                                on us!",
              size: 15,
              fontWeight: FontWeight.w200,
              textAlign: TextAlign.center),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)),
            child: _text(
                text: "Enter you emal",
                size: 20,
                color: Colors.white,
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }

  _product(info all) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 200,
      width: 170,
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              image:
                  DecorationImage(image: NetworkImage(all.pic!), fit: BoxFit.cover),
            ),
          )),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text(
                      text: "${all.foodName}",
                      size: 17.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.black),
                  Row(
                    children: [
                      Icon(
                        Icons.grade_outlined,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.grade_outlined,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.grade_outlined,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.grade_outlined,
                        color: Colors.amber,
                      ),
                      _text(
                          text: "+93",
                          color: Colors.black,
                          size: 20,
                          fontWeight: FontWeight.w300)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _ad() {
    return Stack(
      children: [
        Container(
            alignment: Alignment(-0.50, 0.70),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.550,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(pic1), fit: BoxFit.cover)),
            child: _text(
                text: "Get 20% off when you \npurchase 5 meal kits",
                size: 30.0,
                fontWeight: FontWeight.bold)),
        Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  _text(text: "SALE", size: 17, textAlign: TextAlign.justify)
                ],
              ),
            ))
      ],
    );
  }

  _top() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _text(
              text: "Top rated recipes",
              size: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          _text(
              text: "Show all",
              fontWeight: FontWeight.w200,
              color: Colors.black,
              size: 15)
        ],
      ),
    );
  }

  _text(
      {required String text,
      TextAlign textAlign = TextAlign.start,
      double size = 24.0,
      Color color = Colors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return Text(text,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight));
  }
}
