// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

PostsModel welcomeFromMap(String str) => PostsModel.fromMap(json.decode(str));

String welcomeToMap(PostsModel data) => json.encode(data.toMap());

class PostsModel {
    PostsModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    final int userId;
    final int id;
    final String title;
    final String body;

    factory PostsModel.fromMap(Map<String, dynamic> json) => PostsModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
