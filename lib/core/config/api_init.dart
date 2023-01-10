import 'dart:convert';
import 'package:api_tut/core/config/api.dart';
import 'package:flutter/services.dart';

class ApiInit
{
  String get file => "assets/config/api.json";

  Future<void> init()async
  {
    String data = await rootBundle.loadString(file);
    var dataMap = Map<String,dynamic>.from(jsonDecode(data));
    Api().parseBaseUrl(dataMap);
    Api().parseResources(dataMap);
    //return Api(dataMap);
  }

}