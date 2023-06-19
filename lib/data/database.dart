import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
//reference our box
  // ignore: unused_field
  final _myBox = Hive.box('mybox');
  //run this method if this is 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from Database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the data
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
