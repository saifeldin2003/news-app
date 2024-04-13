import 'package:flutter/material.dart';
import 'package:newsapp/models/newtilemodel.dart';

// ignore: must_be_immutable
class Newtile extends StatelessWidget {
  Newtilemodel newtilemodel;
  Newtile({required this.newtilemodel});  
  @override
  Widget build(BuildContext context) {
    String url2 = "https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227_1280.jpg";
    return Padding(
      padding: EdgeInsets.only(top: 12,left: 10,right: 10),
      child: Column(
        children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: newtilemodel.url==null?
               Image.network(
                url2, 
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ) : 
              Image.network(
                newtilemodel.url!, 
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ) 
          ),
         const SizedBox(
            height: 5,
          ),
           Text(newtilemodel.description==null?"aaaa7777777aaaaaaa":newtilemodel.description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              )),
           Text(newtilemodel.title,
              maxLines: 2,
              style:const TextStyle(
                color: Colors.black,
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
