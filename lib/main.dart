import 'package:flutter/material.dart';
import 'package:shwe_kabaw/views/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aung Naing Phyo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        primarySwatch: Colors.deepPurple,  
        canvasColor: Colors.deepPurple,   
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

