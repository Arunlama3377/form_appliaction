import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralDropdown extends StatefulWidget {
   GeneralDropdown(this.function,{ Key? key }) : super(key: key);
   final Function(String) function;

  @override
  State<GeneralDropdown> createState() => _GeneralDropdownState();
}

class _GeneralDropdownState extends State<GeneralDropdown> {
  final List <DropdownMenuItem<String>> list =[
    const DropdownMenuItem(child: Text("Male"),value: "Male",),
    const  DropdownMenuItem(child: Text("Female"),value: "Female",),
  ];
 String genderValue ="Male";


  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
           items: list,
           onChanged: (value){
             print(value); 
             setState(() {
               genderValue=value!;
               widget.function(value);
             });
           },
           hint: const Text("Gender"),
           value: genderValue,
 );
  }
}