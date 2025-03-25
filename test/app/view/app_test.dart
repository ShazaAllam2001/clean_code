import 'package:clean_code/app/app.dart';
import 'package:clean_code/features/display_screen/presentation/pages/task_list_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(TaskListPage), findsOneWidget);
    });
  });
}
