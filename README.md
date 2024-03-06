# Todoey✅

Flutter application that touches on the basics of working with a Provider and 
an in-depth understanding of State Management, built in compliance with the principles of OOP

## Technologies🔧

#### - Flutter
#### - Provider
#### - OOP
#### - Inheritance

## Interface💻

The application screen is a title and a line displaying outstanding tasks. Below, a list has been 
created that represents checkboxes and task names that the user adds through the menu that appears 
when the floating button is clicked.

## Functionality🕹

When you click on the floating button, the add task screen appears which uses the ShowModalBottomSheet 
widget for easy user use.

The add new task screen includes a text field with validation. Validation does not allow the user to add 
a task with empty text or a task with text longer than 25 characters. These rules are introduced to comply 
with the design of the application and its functionality.

Below the text field there is a button to add a task; when you click on it, the task is added to the list.

The menu for adding a new task is tied to the keyboard, which automatically appears when you click on 
the floating button for adding tasks.

After adding a task, it appears in the list of the main screen, automatically as not completed. The number 
of uncompleted tasks in the line under the application name is updated when interacting with task checkboxes 
and depends on the number of empty checkboxes. Also, when you click on a checkbox and fill it with a tick, 
the text of the corresponding task becomes crossed out.

The application allows you to navigate through the task list by scrolling the list. There is also an option 
to remove a task from the list; to do this, the user needs to double-click on the text of the corresponding 
task, after which it is deleted both from the screen and from the list in the application files.

The result is a simple life organization application that can be used to maintain a daily/weekly task list☑️❌

## Possible future improvements⬆️

#### - Dividing tasks into categories
#### - Improved app animation
#### - Ability to add task descriptions
#### - Increasing the possible length of task text while respecting the application design
