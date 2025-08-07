import 'package:flutter/material.dart';
import 'package:stream_builder/stream_builder_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:  StreamBuilderPage(),
    );
  }
}
