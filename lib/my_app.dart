import 'package:flutter/material.dart';
import 'package:imc_application/pages/Imc_Page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ), 
      home: const ImcPage(),
    );
  }
}