import 'package:clean_code/core/service/dependency_injection.dart' as di;
import 'package:clean_code/features/display_screen/presentation/cubit/task/data_cubit.dart';
import 'package:clean_code/features/display_screen/presentation/pages/task_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => di.sl<TaskCubit>(),
        child: const TaskListPage(),
      ),
    );
  }
}