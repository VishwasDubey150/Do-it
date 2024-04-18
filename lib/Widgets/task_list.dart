import 'package:do_it/Widgets/task_tile.dart';
import 'package:flutter/cupertino.dart';

import '../Taskscreen.dart';

class Taskslist extends StatefulWidget {
  @override
  State<Taskslist> createState() => _TaskslistState();
}
class _TaskslistState extends State<Taskslist> {
  List<tasks> task = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Taskstiles(),
        Taskstiles(),
        Taskstiles(),
        Taskstiles(),
        Taskstiles(),
        Taskstiles(),
        Taskstiles(),
      ],
    );
  }
}