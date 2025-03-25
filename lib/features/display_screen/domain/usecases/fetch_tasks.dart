import 'package:clean_code/features/display_screen/data/repositories/task_repository.dart';
import 'package:clean_code/features/display_screen/domain/entities/task.dart';

class GetTasks {
  GetTasks(this.repository);
  
  final TaskRepository repository;

  Future<List<Task>> call() async {
    return repository.getTasks();
  }
}
