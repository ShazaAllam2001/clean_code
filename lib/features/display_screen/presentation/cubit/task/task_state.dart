import 'package:clean_code/features/display_screen/domain/entities/task.dart';

abstract class TaskState {
  const TaskState();
}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TaskLoaded extends TaskState {
  const TaskLoaded(this.tasks);

  final List<Task> tasks;
}

class TaskError extends TaskState {
  const TaskError(this.message);
  
  final String message;
}