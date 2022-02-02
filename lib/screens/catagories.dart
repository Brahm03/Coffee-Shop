import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  const Catagories({Key? key}) : super(key: key);

  @override
  _CatagoriesState createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  final Color _appbar_color = Color(0xFFE5E5E5);
  List<String> pic = ['https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGJyZWFrZmFzdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1626813701082-b6c7040c4219?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHBhc3RyaWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1588168333986-5078d3ae3976?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RlYWt8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1558818498-28c1e002b655?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1620791144170-8a443bf37a33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNvdXBzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2x1dGVuJTIwZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60', 'https://images.unsplash.com/photo-1626552473087-db08c9bb4843?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTN8fGNha2V8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60'];
  List<String> catog_names = [
    'Breakfast',
    'Pastries',
    'Steak',
    'Coffee',
    'Vegetables',
    'Soups',
    'Gluten Free',
    'Cake',
  ];

  List<String> recipes = [
    '734 RECIPES',
    '356 RECIPES',
    '763 RECIPES',
    '983 RECIPES',
    '343 RECIPES',
    '983 RECIPES',
    '763 RECIPES',
    '983 RECIPES'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _appbar(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 759,
            child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (_, __) {
                  return _Catagorie(
                      pic: pic[__],catog_name: catog_names[__], recipes: recipes[__]);
                }),
          )
        ],
      ),
    );
  }

  _Catagorie({required String pic,required catog_name, required String recipes}) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      height: 187,
      width: 187,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(pic),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          _text(
              text: "$catog_name",
              color: Colors.white,
              size: 28,
              fontWeight: FontWeight.w600),
          _text(
              text: "$recipes",
              color: Colors.white,
              size: 11,
              fontWeight: FontWeight.w400),
        ],
      ),
    );
  }

  _appbar() {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
      color: _appbar_color,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BackButton(
            color: Colors.black,
          ),
          _text(
              text: "Categories",
              size: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
    );
  }

  _text(
          {TextAlign textAlign = TextAlign.center,
          double size = 24.0,
          required String text,
          Color color = Colors.white,
          FontWeight fontWeight = FontWeight.normal}) =>
      Text(
        text,
        style: TextStyle(color: color, fontWeight: fontWeight, fontSize: size),
        textAlign: textAlign,
      );
}
