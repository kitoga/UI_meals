import 'package:flutter/material.dart';
import './data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Category> category = [
    Category(
      icon: Icon(Icons.fastfood, size: 20),
      name: 'All',
    ),
    Category(
      icon: Icon(Icons.donut_large, size: 20),
      name: 'Vegas',
    ),
    Category(
      icon: Icon(Icons.donut_small, size: 20),
      name: 'Snacks',
    ),
    Category(
      icon: Icon(Icons.local_drink, size: 20),
      name: 'Drink',
    ),
    Category(
      icon: Icon(Icons.folder_open, size: 20),
      name: 'Donuts',
    ),
  ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         padding: EdgeInsets.only(top:40, left: 20, right: 20, bottom: 10),
        child: Column(
          children: <Widget>[
            Container(
              //padding: EdgeInsets.only(top:40, left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_back_ios, size: 30,),
                  Icon(Icons.search, size: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Order', style: TextStyle(fontSize: 30)),
                  SizedBox(height: 10,),

                  Container(
                    height: MediaQuery.of(context).size.height/2 -200,
                    //color: Colors.blue,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: category.map((tx) {
                          return Padding(
                            padding: const EdgeInsets.only(right:10),
                            child: Container(
                              height: 250,
                              width: 85,
                              //padding: EdgeInsets.only(left: 3, right: 10),
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(width: 2, color: Color(0xffBCBABA))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xffeaeaea),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(width: 2, color: Color(0xff747474))
                                      ),
                                      child: tx.icon,
                                    ),
                                  ),

                                  SizedBox(height: 20,),
                                  Text(
                                    tx.name,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}