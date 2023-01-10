import 'package:flutter/cupertino.dart';
class Api extends ChangeNotifier
{
  late String baseUrl;
  String? prefix;
  Map<String,dynamic> resources = {};

  Api()
  {
    //_parseBaseUrl(date!);
    //_parseResources(date);
  }

  parseBaseUrl(Map<String,dynamic> date)
  {
    baseUrl = date['api']['baseurl'][date['api']['status']];
    prefix = date['api']['prefix'];
    notifyListeners();
  }

  parseResources(Map<String,dynamic> date)
  {
    resources = date['resources'];
    notifyListeners();
  }

  resolve(Type type)
  {
    return baseUrl + prefix! +resources[type.toString()];
  }

}