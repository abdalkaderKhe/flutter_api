import 'package:api_tut/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeController();
  @override
  void initState() {
    homeController.getTodosList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Example"),
      ),
      body: Container(
        child: ListView(
          children: homeController.todos.map((todo)
          {
            return Card(child: ListTile(title: Text(todo.title),subtitle: Text(todo.completed ? 'completed' : 'pinding'),),);
          }).toList(),
        ),
      ),
    );
  }
}

