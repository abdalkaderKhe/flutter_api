import 'dart:convert';
import 'package:api_tut/base/models/todo.dart';
import 'package:api_tut/core/config/api.dart';
import 'package:api_tut/core/contracts/model.dart';
import 'package:dio/dio.dart';

abstract class Service<T extends CoreModel>
{
  Api api = Api();

  Future<List<T>?> findAll()async
  {
    String url = api.resolve(T);
    Response response = await Dio().get(url);
    if(response.statusCode != 200)
      {
         throw Exception(response.statusCode ?? 500);
      }


    Map<String,dynamic> data = jsonDecode(response.data.toString());

    List<T> models = [];

    for(var item in data['body'])
      {
        models.add(CoreModel.make<T>(item) as T);
      }
    return models;
  }

  //findOne();
  //updateOne();
  //deleteOne();
}