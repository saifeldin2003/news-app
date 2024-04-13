import 'package:flutter/material.dart';
import 'package:newsapp/views/newstile_list.dart';

// ignore: must_be_immutable
class newtilcategory extends StatelessWidget{
  String ctgry;
  newtilcategory({required this.ctgry});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            newstile_list(category: ctgry)
          ],
        ),
      ),
    );    
  }

}