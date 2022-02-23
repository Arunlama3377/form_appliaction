import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralRadioButton extends StatefulWidget {
  const GeneralRadioButton(this.function,{ Key? key }) : super(key: key);
  final Function(String) function;
 
  @override
  _GeneralRadioButtonState createState() => _GeneralRadioButtonState();
}
String  genderValue ="Male";
class _GeneralRadioButtonState extends State<GeneralRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getRadioValue("Male"),
         const  Text("Male"),
          const SizedBox(
            width: 20,
          ),
           getRadioValue("Female"),
           const  Text("Female"),
      ],
    );



  }
Widget getRadioValue(String value){
  return Radio<String>(
          value: value,
         groupValue: genderValue,
          onChanged: (value){
            setState(() {
              genderValue=value.toString();
            });
            widget.function(value!);
           
          }
          );

}

 

  }
