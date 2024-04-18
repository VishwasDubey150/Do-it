import 'package:do_it/Widgets/add_tast.dart';
import 'package:do_it/Widgets/task_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Taskscreen extends StatelessWidget {
  const Taskscreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () { 
          showModalBottomSheet(context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
              child:Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTask())));
        },
        child: Icon(Icons.add,size: 30.0,color:Colors.white,),
      ),
      backgroundColor: Colors.blue,
      body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(


            padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 70.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                        Icons.list,size: 30.0,color: Colors.blue,),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Do-it" ,style: TextStyle(color: Colors.white,fontSize: 30.0,fontFamily: 'Fontmain')),
                SizedBox(height: 10.0,),
                Text("12 tasks" ,style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'Fontmain')),
                SizedBox(height: 40.0,)
              ],
            ),
          ),
    Expanded(
    child: Container(
    padding: EdgeInsets.only(left: 20.0),
    height: 800.0,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0)

    )
    ),
      child: Taskslist(),
    ),
      ),]
    )
    );
  }
}