import 'package:api_tut/base/models/todo.dart';
import 'package:api_tut/base/service/todo.dart';

class HomeController
{
  TodoService todoService = TodoService();
  List<Todo> todos = [];

  List<Todo> getTodosList()
  {
    todoService.findAll().then((value) {
      if(value != null) todos.addAll(value);
    });
    return todos;
  }

}