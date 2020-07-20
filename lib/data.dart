import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category{
  final String rate;
  final String food;
  final Icon icon;
  final String fName;
  final String money;
  //MaterialColor materialCol;
  MaterialColor materialCol;


  Category({
   @required this.rate,
   @required this.food,
   @required this.icon,
   @required this.fName,
   @required this.money,
   //@required this.materialCol,
   @required this.materialCol,
  });

  List<Category> createSampleList() {
    List _category = List<Category>();
    return _category
     ..add(Category(
      rate: '4.8',
      food: 'assets/images/Fiber_Breakfast_2.jpg',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00',
      //materialCol: Colors.white,
      materialCol: Colors.yellow,
    )) 
     ..add(Category(
      rate: '4.8',
      food: 'assets/images/Fiber_Breakfast_2.jpg',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00',
      materialCol: Colors.green,
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/images/Fiber_Breakfast_2.jpg',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00',
      materialCol: Colors.red,
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/images/Fiber_Breakfast_2.jpg',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00',
      materialCol: Colors.orange,
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/images/Fiber_Breakfast_2.jpg',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00',
      materialCol: Colors.amber,
    ))
     ..add(Category(
      rate: '4.8',
      food: 'assets/images/Fiber_Breakfast_2.jpg',
      icon: Icon(Icons.star),
      fName: 'Breakfast',
      money: '5.00',
      materialCol: Colors.teal,
    ));  
  }
}


