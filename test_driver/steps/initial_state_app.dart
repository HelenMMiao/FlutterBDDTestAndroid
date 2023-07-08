// import 'package:flutter_driver/flutter_driver.dart';
// import 'package:flutter_gherkin/flutter_gherkin.dart';
// import 'package:gherkin/gherkin.dart';
//
// StepDefinitionGeneric GivenInitialStateOfApp() {
//   return given<FlutterWorld>(
//     RegExp(r'I test the initial state of the app'),
//         (context) async {
//       try {
//         var contervalue = await FlutterDriverUtils.getText(
//           context.world.driver!,
//           find.byValueKey("counter"),
//         );
//         context.expect(contervalue, "0");
//       } catch (e) {
//         await context.reporter.message('Step error: $e', MessageLevel.error);
//         rethrow;
//       }
//     },
//   );
// }