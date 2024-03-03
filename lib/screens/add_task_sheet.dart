import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/components/task_data.dart';
import '../constants.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).viewInsets.bottom,
        decoration: const BoxDecoration(
          color: kItemsColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              style: kTitleTextStyle.copyWith(
                fontSize: 26,
                color: kBackgroundColor1,
              ),
              'Write a new task:',
            ),
            TextFormField(
              autofocus: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ("Input task, please");
                }
                if (value.length > 25) {
                  return ("Too long task");
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.always,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: kItemsColor,
                hintText: 'Enter task',
                hintStyle: kSmallTextStyle.copyWith(color: kBackgroundColor1),
              ),
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            const SizedBox(
              height: 5,
            ),
            MaterialButton(
              onPressed: () {
                if (newTaskTitle.isNotEmpty && newTaskTitle.length <= 25) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: kBackgroundColor1,
              child: const Text(
                style: kSmallTextStyle,
                'Add Task',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
