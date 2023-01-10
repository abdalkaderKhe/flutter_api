import 'package:api_tut/core/config/api_init.dart';

class App{
  static init()async
  {
    //  inject dependency
    await ApiInit().init();
  }
}