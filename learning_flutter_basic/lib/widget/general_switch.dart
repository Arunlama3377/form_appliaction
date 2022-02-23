import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralSwitch extends StatefulWidget {
  const GeneralSwitch({ Key? key }) : super(key: key);



  @override
  _GeneralSwitchState createState() => _GeneralSwitchState();
}

class _GeneralSwitchState extends State<GeneralSwitch> {
  bool isStaff =true;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isStaff,
      activeColor: Colors.orange,
      inactiveThumbColor: Colors.green,
      inactiveTrackColor: Colors.green,
      onChanged: (value) => setState(()=>isStaff =!isStaff), 
        );

  }
}