import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
        height: 200.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(

          children: <Widget>[
            const Text("Add Tasks", style: TextStyle(fontFamily: 'Fontmain',fontSize: 20.0,color: Colors.blue),),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)), child: const Text('Add', style: TextStyle(fontFamily: 'Fontmain',fontSize: 10.0,color: Colors.white),)
            ,)
          ],
        ),
      ),
    );
  }
}
