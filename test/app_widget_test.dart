import 'package:androidflutterapp/pages/choose_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:androidflutterapp/pages/loading.dart';
import 'package:androidflutterapp/pages/home.dart';

void main(){
  // testWidgets("Check widget title text", (tester) async {
  //   await tester.pumpWidget(
  //     MaterialApp(home: ChooseLocation())
  //   );
  //   expect(find.text("Choose location screen"), findsOneWidget);
  //   expect(find.byType(AppBar), findsOneWidget);
  // });

  testWidgets("Click location icon", (tester) async{
    await tester.pumpWidget(
      MaterialApp(
        home: Home(),
      )
    );
  //   // final chooseLocation = find.byType(TextButton);
  //   // expect(find.byType(TextButton), findsNothing);
  //   // await tester.tap(chooseLocation);
  //   // expect(find.text("Choose location screen"), findsOneWidget);
  //
  });
}