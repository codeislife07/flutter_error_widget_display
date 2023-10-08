import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_error_widget_display/home_screen.dart';

import 'custom_error_widget.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    log(details.exceptionAsString());
    runApp(CustomErrorWidget(errorMessage: details.exceptionAsString()));
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Error Widget',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}