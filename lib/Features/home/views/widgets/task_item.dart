import 'package:flutter/material.dart';
import 'package:tasker/core/resources/colorManager.dart';
import 'package:tasker/models/task_model.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TaskItem({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.isCompleted,
        activeColor: ColorManager.checkboxCompleted,
        onChanged: (_) => onToggle(),
      ),
      title: Text(
        task.title,
        style: TextStyle(
          fontFamily: 'Arial',
          fontSize: 16,
          color: task.isCompleted ? Colors.grey : ColorManager.taskTitle,
          decoration: task.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: onDelete,
      ),
    );
  }
}
