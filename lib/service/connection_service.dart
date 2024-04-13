
import 'package:dio/dio.dart';
import 'package:newsapp/models/newtilemodel.dart';
class Services_dio{
Dio dio;
Services_dio({required this.dio});

  Future<List<Newtilemodel>> getnews([String category='']) async {
    var result = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=4a5313e56d6a44d5a666da7dca64a614");
    if(result.statusCode ==403){

    }else{
      print("555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555");
    }
    Map<String,dynamic> data = result.data;
    List<dynamic> datalist = data['articles'];
    List<Newtilemodel> newtils=[];
    for (var article in datalist) {

        Newtilemodel newtilemodel;

          newtilemodel = Newtilemodel(
          url: article['urlToImage'],
          title: article['title'],
          description: article['description']);
        
        newtils.add(newtilemodel); 
    }
return newtils;
  }





}