import 'package:clean_code/features/display_screen/data/models/task_model.dart';

abstract class TaskLocalDataSource {
  Future<List<TaskModel>> getTasks();
  Future<void> addTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(String id);
}


class TaskLocalDataSourceImpl implements TaskLocalDataSource {
  final List<TaskModel> _tasks = [
    TaskModel(
      id: '1',
      title: 'Learn Flutter',
      description: 'Study Clean Architecture',
      isCompleted: true,
    ),
    TaskModel(
      id: '2',
      title: 'Build App',
      description: 'Implement Clean Architecture',
    ),
  ];

  @override
  Future<List<TaskModel>> getTasks() async {
    return _tasks;
  }

  @override
  Future<void> addTask(TaskModel task) async {
    _tasks.add(task);
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
    }
  }

  @override
  Future<void> deleteTask(String id) async {
    _tasks.removeWhere((task) => task.id == id);
  }
}
