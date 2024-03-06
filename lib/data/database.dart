import 'package:hive_flutter/hive_flutter.dart';

class ToDODatabase {
  //reference the box
  List toDoList = [];

  final _todoBox = Hive.box('todobox');

  //run this if the user is opening the app first time ever
  void createInitialData() {
    toDoList = [
      ["Be nice", false],
      ["Read books", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _todoBox.get("TODOLIST");
  }

  //update the database
  void updateDatabse() {
    _todoBox.put("TODOLIST", toDoList);
  }
}
