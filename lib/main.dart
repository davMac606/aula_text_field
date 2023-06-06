import 'package:aula_text_field/home_page.dart';
import 'package:aula_text_field/my_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: 
      {
        '/my_text': (context) => const MyText(),
      },
      home: const HomePage(),
    );
  }
}

