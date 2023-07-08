import 'package:androidflutterapp/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Integration', (tester) async{
    app.main();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Edit Location'));
    await tester.pumpAndSettle();
    expect(find.text('Choose location screen'), findsOneWidget);
    await Future.delayed(const Duration(seconds: 2));
  });
}

