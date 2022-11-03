
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:alidemircan/posts_model.dart';

class DateTimes with ChangeNotifier {
  String? title;
  String? lead;
  int? id;
  void func (choosedTitle, choosedLead, choosedId){
    title= choosedTitle;
    lead = choosedLead;
    id = choosedId;
    notifyListeners();
    }
    
  
  Future<List<PostsModel>> getUsers() async{
    try{
      List<PostsModel> user = [];
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      if(response.statusCode == 200){
        user = (response.data as List).map((e) => PostsModel.fromMap(e)).toList();
      }
      return user;
    }on DioError catch(e){
      return Future.error(e);
    }
  }
}

