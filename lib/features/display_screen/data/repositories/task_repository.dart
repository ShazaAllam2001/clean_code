import 'package:clean_code/features/display_screen/data/data_sources/task_local_data_source.dart';
import 'package:clean_code/features/display_screen/data/models/task_model.dart';
import 'package:clean_code/features/display_screen/domain/entities/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();
  Future<void> addTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(String id);
}


class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl({required this.localDataSource});

  final TaskLocalDataSource localDataSource;

  @override
  Future<List<Task>> getTasks() async {
    final tasks = await localDataSource.getTasks();
    return tasks;
  }

  @override
  Future<void> addTask(Task task) async {
    await localDataSource.addTask(
      TaskModel(
        id: task.id,
        title: task.title,
        description: task.description,
        isCompleted: task.isCompleted,
      ),
    );
  }

  @override
  Future<void> updateTask(Task task) async {
    await localDataSource.updateTask(TaskModel(
      id: task.id,
      title: task.title,
      description: task.description,
      isCompleted: task.isCompleted,
    ));
  }

  @override
  Future<void> deleteTask(String id) async {
    await localDataSource.deleteTask(id);
  }
}
