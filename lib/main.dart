import 'package:api_tut/app/app.dart';
import 'package:api_tut/core/config/app_init.dart';
import 'package:flutter/material.dart';

void main()async
{
   WidgetsFlutterBinding.ensureInitialized();
   await App.init();
   runApp(const ApiExample());
}

