// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.userId,
    required this.userName,
    required this.date,
    required this.comments,
    required this.edited,
  });

  String id;
  String title;
  String content;
  String userId;
  String userName;
  bool edited;
  DateTime date;
  String comments;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: "title",//json["title"],
        content: json["text"],
        userId: json["user"],
        userName: json["username"],
        date: new DateTime.now(),//DateTime.parse(json["date"]),
        edited: true,//json["edited"],
        comments: json["comments"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "user_id": userId,
        "user_name": userName,
        "date": date.toIso8601String(),
        "comments": comments,
      };
}
