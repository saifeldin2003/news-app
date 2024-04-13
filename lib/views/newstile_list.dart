import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/newtilemodel.dart';
import 'package:newsapp/service/connection_service.dart';
import 'package:newsapp/views/newtile.dart';

class newstile_list extends StatefulWidget {
 String category;
 newstile_list({required this.category});
  @override
  State<newstile_list> createState() => _newstile_listState();
}

class _newstile_listState extends State<newstile_list> {
  var news;

  @override
  void initState() {
    super.initState();
    news = Services_dio(dio: Dio()).getnews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Newtilemodel>>(
      future: news,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: snapshot.data?.length,
              (context, index) => Newtile(
                newtilemodel: snapshot.data![index],
              ),
            ),
          );
        }else if(snapshot.hasError)
        { 
          return const SliverToBoxAdapter(child: Text("a777aaa"));
        } else{
          return  SliverToBoxAdapter(
            child:SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              ),
            ) ,);
        } 
      },
    );
  }
}
