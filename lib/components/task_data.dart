import 'package:flutter/foundation.dart';
import 'package:state_management/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasksList = [];

  UnmodifiableListView<Task> get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get giveLength {
    return _tasksList.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(taskName: newTaskTitle);
    _tasksList.add(task);
    notifyListeners();
  }

  void changeCheckboxValue(int index) {
    _tasksList[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasksList.remove(_tasksList[index]);
    notifyListeners();
  }

  int get uncompletedTaskCount {
    int count = 0;
    for (Task task in _tasksList) {
      if (!task.isDone) {
        count++;
      }
    }
    return count;
  }
}
