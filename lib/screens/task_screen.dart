import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/screens/add_task_sheet.dart';
import 'package:state_management/components/task_data.dart';
import 'package:state_management/components/task_list_container.dart';
import '../constants.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor1,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kBackgroundColor1,
        child: const Icon(
          Icons.create,
          color: kItemsColor,
          size: 30,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => const AddTaskSheet());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: kItemsColor,
                  radius: 60,
                  child: Icon(
                    Icons.list_alt,
                    size: 50,
                    color: kBackgroundColor1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  style: kTitleTextStyle,
                  'Todoey',
                ),
                Text(
                  style: kSmallTextStyle,
                  '${Provider.of<TaskData>(context, listen: true).uncompletedTaskCount} Uncompleted',
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          const TaskListContainer(),
        ],
      ),
    );
  }
}
