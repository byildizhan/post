import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:alidemircan/posts_model.dart';

class HomePageProvider with ChangeNotifier {


  HomePageProvider(){
    getUsersToList();
  }


  List<PostsModel> postList = [];

  Future<List<PostsModel>> getUsers() async {
    try {
      List<PostsModel> user = [];
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        user =
            (response.data as List).map((e) => PostsModel.fromMap(e)).toList();
      }
      return user;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  void getUsersToList() async {
    print("FONKSYİON ÇAĞIRILDI!");
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        postList =
            (response.data as List).map((e) => PostsModel.fromMap(e)).toList();
           notifyListeners();
      }
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
