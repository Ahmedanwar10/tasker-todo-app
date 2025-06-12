import 'package:flutter/material.dart';
import 'package:tasker/models/task_model.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  final List<TaskModel> tasks;
  final Function(int) onToggle;
  final Function(int) onDelete;

  const TaskList({
    super.key,
    required this.tasks,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tasks.length,
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) {
        return TaskItem(
          task: tasks[index],
          onToggle: () => onToggle(index),
          onDelete: () => onDelete(index),
        );
      },
    );
  }
}
