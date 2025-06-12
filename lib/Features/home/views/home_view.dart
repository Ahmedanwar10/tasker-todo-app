import 'package:flutter/material.dart';
import 'package:tasker/Features/home/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasker'),
        centerTitle: true,
      ),
      body: HomeViewBody(),
    );
  }
}