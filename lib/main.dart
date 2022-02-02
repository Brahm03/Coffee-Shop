import 'package:coffee_shop/screens/Mainpage.dart';
import 'package:coffee_shop/screens/catagories.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop Demo verision',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.black
        )
      ),
      home: Mainpage(),
    );
  }
}
