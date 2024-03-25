import 'package:flutter/material.dart';
import 'package:shwe_kabaw/network/api_service.dart';
import 'package:provider/provider.dart';
import 'package:shwe_kabaw/views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => ApiService.create(),
      child :MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        scaffoldBackgroundColor: Colors.white
      ),
      home: const WelcomeScreen(),
    )
    );
      
  }
}

