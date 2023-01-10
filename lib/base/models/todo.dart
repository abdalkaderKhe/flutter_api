import 'package:api_tut/core/contracts/model.dart';
import 'package:flutter/material.dart';

class Todo extends CoreModel{
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId,this.id,this.title,this.completed);

  factory Todo.fromJson(Map<String,dynamic> date)
  {
    return Todo(
         date["userId"],
         date["id"],
         date["title"],
         date["completed"],
    );
  }

}