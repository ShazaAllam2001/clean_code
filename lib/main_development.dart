import 'package:clean_code/app/app.dart';
import 'package:clean_code/bootstrap.dart';
import 'package:clean_code/core/service/dependency_injection.dart' as di;
import 'package:flutter/widgets.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await bootstrap(() => const App());
}
