import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/components/task_data.dart';
import 'package:state_management/components/task_list_object.dart';
import '../constants.dart';

class TaskListContainer extends StatelessWidget {
  const TaskListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        decoration: const BoxDecoration(
          color: kItemsColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TaskListObject(
              objIndex: index,
            );
          },
          itemCount: Provider.of<TaskData>(context, listen: true).giveLength,
        ),
      ),
    );
  }
}
