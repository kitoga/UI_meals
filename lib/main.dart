import 'package:flutter/material.dart';
//import 'package:ui_meals/try.dart';
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

  List _category = List<Category>();
  double _screenWidthAdjustment;

  @override
  void initState() { 
    super.initState();
    _category = Category().createSampleList();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/1 - 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:35, left: 15, right: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios, size: 30,),
                      Icon(Icons.search, size: 30),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('Order', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height/2 -220,
                        color: Colors.blueGrey,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: (){},
                                child: Padding(
                                padding: const EdgeInsets.only(right:10),
                                child: Container(
                                  height: 200,
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
                                          child: Icon(Icons.fastfood),
                                        ),
                                      ),

                                      SizedBox(height: 10,),
                                      Text(
                                        'All',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Padding(
                                padding: const EdgeInsets.only(right:10),
                                child: Container(
                                  height: 200,
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
                                          child: Icon(Icons.donut_large),
                                        ),
                                      ),

                                      SizedBox(height: 10,),
                                      Text(
                                        'All',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Padding(
                                padding: const EdgeInsets.only(right:10),
                                child: Container(
                                  height: 200,
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
                                          child: Icon(Icons.donut_small),
                                        ),
                                      ),

                                      SizedBox(height: 10,),
                                      Text(
                                        'All',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Padding(
                                padding: const EdgeInsets.only(right:10),
                                child: Container(
                                  height: 200,
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
                                          child: Icon(Icons.local_bar),
                                        ),
                                      ),

                                      SizedBox(height: 10,),
                                      Text(
                                        'All',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Padding(
                                padding: const EdgeInsets.only(right:10),
                                child: Container(
                                  height: 200,
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
                                          child: Icon(Icons.home),
                                        ),
                                      ),

                                      SizedBox(height: 10,),
                                      Text(
                                        'All',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ), 
                            ],
                          )
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(
                        height: 344,
                        width: double.infinity,
                        //color: Colors.redAccent,
                        child: ,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
  
}