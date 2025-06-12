import 'package:flutter/material.dart';
import 'package:tasker/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  const MyApp({super.key});           

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tasker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      routerConfig: AppRoutes.router,
    );
  }
}
