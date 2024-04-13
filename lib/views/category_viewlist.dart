import 'package:flutter/material.dart';
import 'package:newsapp/models/categorymodel.dart';
import 'package:newsapp/views/categorycard.dart';
class categoryview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<Categorymodel> categorymodellst =[
      Categorymodel(img: "assets/busniss.jpg", title: "Busniss"),
      Categorymodel(img: "assets/entertaiment.jpg", title: "Entertaiment"),
      Categorymodel(img: "assets/health.jpg", title: "Health"),
      Categorymodel(img: "assets/scince.jpg", title: "Scince"),
      Categorymodel(img: "assets/sports.jpg", title: "Sports"),
      Categorymodel(img: "assets/technology.jpg", title: "Technology"),
      ];
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemBuilder:( context, index) => categorycard(ctgrymodel: categorymodellst[index],),
        itemCount: categorymodellst.length,
        scrollDirection: Axis.horizontal,
          ),
    );
  }

}