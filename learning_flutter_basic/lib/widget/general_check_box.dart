import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenrealCheckBox extends StatefulWidget {
  const GenrealCheckBox(this.function,{ Key? key }) : super(key: key);
   final Function(bool) function;
  @override
  _GenrealCheckBoxState createState() => _GenrealCheckBoxState();

}
bool isAgreed=true;
 


class _GenrealCheckBoxState extends State<GenrealCheckBox> {

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isAgreed, onChanged: (value){
      setState(() {
        isAgreed=value!;
      });
      widget.function(value!);
    });
  }
}