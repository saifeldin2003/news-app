import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/category_viewlist.dart';
import 'package:newsapp/views/newstile_list.dart';
import 'package:newsapp/service/connection_service.dart';

void main() {
  Services_dio(dio: Dio()).getnews();
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white70,
          title: const Row(mainAxisSize: MainAxisSize.min, children: [
            Text("News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
            SizedBox(
              width: 1,
            ),
            Text("Cloud",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                )),
          ]),
          elevation: 0.0,
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: categoryview(),
            ),
             newstile_list(category: "general")
          ],
        ));
  }
}
