import 'package:clean_code/features/display_screen/data/data_sources/task_local_data_source.dart';
import 'package:clean_code/features/display_screen/data/repositories/task_repository.dart';
import 'package:clean_code/features/display_screen/domain/usecases/fetch_tasks.dart';
import 'package:clean_code/features/display_screen/presentation/cubit/task/data_cubit.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

Future<void> init() async {
  // Cubit
  sl..registerFactory(
    () => TaskCubit(getTasks: sl()),
  )

  // Use cases
  ..registerLazySingleton(() => GetTasks(sl()))

  // Repository
  ..registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(localDataSource: sl()),
  )

  // Data sources
  ..registerLazySingleton<TaskLocalDataSource>(
    TaskLocalDataSourceImpl.new,
  );
}