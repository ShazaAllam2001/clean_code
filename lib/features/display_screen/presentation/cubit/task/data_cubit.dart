import 'package:clean_code/features/display_screen/domain/usecases/fetch_tasks.dart';
import 'package:clean_code/features/display_screen/presentation/cubit/task/task_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TaskCubit extends Cubit<TaskState> {
  TaskCubit({required this.getTasks}) : super(TaskInitial());

  final GetTasks getTasks;

  Future<void> fetchTasks() async {
    emit(TaskLoading());
    try {
      final tasks = await getTasks();
      emit(TaskLoaded(tasks));
    } 
    catch (e) {
      emit(const TaskError('Failed to load tasks'));
    }
  }
}