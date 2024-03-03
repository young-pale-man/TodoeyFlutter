import 'package:flutter/material.dart';
import 'package:state_management/constants.dart';
import 'package:provider/provider.dart';
import 'package:state_management/components/task_data.dart';

class TaskListObject extends StatelessWidget {
  const TaskListObject({
    super.key,
    required this.objIndex,
  });
  final int objIndex;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Row(
          children: [
            Checkbox(
              fillColor: MaterialStateProperty.resolveWith((states) {
                return kBackgroundColor1;
              }),
              checkColor: kItemsColor,
              value: taskData.tasksList[objIndex].isDone,
              onChanged: (value) {
                Provider.of<TaskData>(context, listen: false)
                    .changeCheckboxValue(objIndex);
              },
            ),
            GestureDetector(
              onDoubleTap: () {
                taskData.deleteTask(objIndex);
              },
              child: Text(
                style: kSmallTextStyle.copyWith(
                  color: kBackgroundColor1,
                  decoration: taskData.tasksList[objIndex].isDone
                      ? TextDecoration.lineThrough
                      : null,
                ),
                taskData.tasksList[objIndex].taskName,
              ),
            ),
          ],
        );
      },
    );
  }
}
