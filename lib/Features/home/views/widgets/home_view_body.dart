import 'package:flutter/material.dart';
import 'package:tasker/Features/home/views/widgets/task_input_filed.dart';
import 'package:tasker/Features/home/views/widgets/task_list.dart';
import 'package:tasker/models/task_model.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
    final TextEditingController _controller = TextEditingController();
  final List<TaskModel> _tasks = [];

  void _addTask() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _tasks.add(TaskModel(title: text));
      _controller.clear();
    });
  }

  void _toggleTask(int index) {
    setState(() {
      _tasks[index].isCompleted = !_tasks[index].isCompleted;
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TaskInputField(controller: _controller, onAdd: _addTask),
            const SizedBox(height: 16),
            Expanded(
              child: TaskList(
                tasks: _tasks,
                onToggle: _toggleTask,
                onDelete: _deleteTask,
              ),
            ),
          ],
        ),
      );
  }
}