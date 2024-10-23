// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_facesdk/flutter_facesdk.dart';

import '../lib/main.dart'; // Importing flutter_facesdk


void main() {
  testWidgets('Verify Platform version from flutter_facesdk', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Simulate a plugin call or interaction.
    final FlutterFacesdk facesdkPlugin = FlutterFacesdk();
    final String? platformVersion = await facesdkPlugin.getPlatformVersion();
    
    // Ensure the platform version is retrieved correctly
    expect(platformVersion != null && platformVersion.isNotEmpty, true);

    // Verify that platform version is displayed in the widget tree
    expect(
      find.byWidgetPredicate(
        (Widget widget) => widget is Text &&
                           widget.data!.startsWith('Running on: $platformVersion'),
      ),
      findsOneWidget,
    );
  });
}
