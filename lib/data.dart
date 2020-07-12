import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category{
  final String rate;
  final String food;
  final Icon icon;
  final String fName;
  final String money;


  Category({
   @required this.rate,
   @required this.food,
   @required this.icon,
   @required this.fName,
   @required this.money,
  });

  List<Category> createSampleList() {
    List _category = List<Category>();
    return _category
    ..add(Category(
      rate: '4.8',
      food: 'assets/image/food.png',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00'
    )) 
     ..add(Category(
      rate: '4.8',
      food: 'assets/image/food.png',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00'
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/image/food.png',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00'
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/image/food.png',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00'
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/image/food.png',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00'
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/image/food.png',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00'
    ));  
  }
}

class Name extends StatelessWidget {
  const Name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
                          children: <Widget>[
                            Container(
                              height: 200,
                              width: 200,
                              child: GridView.count(
                                crossAxisCount: 2,
                                primary: false,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 15.0,
                                //childAspectRatio: 0.8,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 5),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2.0,
                                              blurRadius: 3.0,
                                            )
                                          ],
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Container( 
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('4.5', style: TextStyle(color: Color(0xff707070), fontSize: 15),),
                                                Icon(Icons.star, color: Colors.yellow)
                                              ],
                                            ),
                                            ),
                                            //Hero(
                                              
                                            //)
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
    );
  }
}