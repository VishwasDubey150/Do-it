import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskstiles extends StatefulWidget {
  @override
  State<Taskstiles> createState() => _TaskstilesState();
}

class _TaskstilesState extends State<Taskstiles> {
  bool ischecked = false;
  void checkboxcallback(bool checkboxState)
  {
    setState(() {
      ischecked=checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("T1",style: TextStyle(fontFamily: 'Fontmain',decoration: ischecked? TextDecoration.lineThrough:null),),
      trailing: TaskCheckbox(checkboxstate:ischecked,toggleCheckbox:checkboxcallback),

    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxstate;
  final Function toggleCheckbox;
  TaskCheckbox({required this.checkboxstate, required this.toggleCheckbox});


  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blue,
      value: checkboxstate,
      onChanged:toggleCheckbox(),);
  }
}
