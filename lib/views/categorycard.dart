import 'package:flutter/material.dart';
import 'package:newsapp/models/categorymodel.dart';
import 'package:newsapp/views/newtilslist_category.dart';

class categorycard extends StatelessWidget {
  categorycard({required this.ctgrymodel});
  final Categorymodel ctgrymodel;
  
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => newtilcategory(ctgry: ctgrymodel.title,),));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ctgrymodel.img))
            ),
           child:  Center(
             child:Text(
              ctgrymodel.title,
             style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
             ),),
           ), 
        ),
      ),
    );
  }
}