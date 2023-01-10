import 'package:api_tut/base/models/todo.dart';

abstract class CoreModel
{
  static CoreModel make<T extends CoreModel>(Map<String,dynamic> map)
  {
    if(T == Todo) return Todo.fromJson(map);
    return EmptyModel();
  }
}

class EmptyModel extends CoreModel
{

}