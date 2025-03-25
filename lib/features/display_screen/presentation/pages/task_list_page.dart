import 'package:clean_code/features/display_screen/presentation/cubit/task/data_cubit.dart';
import 'package:clean_code/features/display_screen/presentation/cubit/task/task_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state is TaskInitial) {
            context.read<TaskCubit>().fetchTasks();
            return const Center(child: Text('Initializing...'));
          } 
          else if (state is TaskLoading) {
            return const Center(child: CircularProgressIndicator());
          } 
          else if (state is TaskLoaded) {
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  trailing: Checkbox(
                    value: task.isCompleted,
                    onChanged: (value) {},
                  ),
                );
              },
            );
          } 
          else if (state is TaskError) {
            return Center(child: Text(state.message));
          } 
          else {
            return const Center(child: Text('Unknown state'));
          }
        },
      ),
    );
  }
}
