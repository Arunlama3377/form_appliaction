import 'package:flutter/material.dart';
import 'package:learning_flutter_basic/constants/constant.dart';
import 'package:learning_flutter_basic/screens/contact_screen.dart';
import 'package:learning_flutter_basic/screens/details_screen.dart';
import 'package:learning_flutter_basic/screens/login_screen.dart';
import 'package:learning_flutter_basic/utils/general_alert_dialog.dart';
import 'package:learning_flutter_basic/widget/general_buttom_sheet.dart';
import 'package:learning_flutter_basic/widget/general_check_box.dart';
import 'package:learning_flutter_basic/widget/general_drop_down.dart';
import 'package:learning_flutter_basic/widget/general_radio_button.dart';
import 'package:learning_flutter_basic/widget/general_switch.dart';
import 'package:learning_flutter_basic/widget/general_text_field.dart';

class Registerscreen extends StatefulWidget {
 const Registerscreen({Key? key}) : super(key: key);

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final genderController = TextEditingController();
  
  final checkBoxController = TextEditingController();

  changeGenderValue(value){
    genderController.text =value!;
  }
 
 changeCheckBoxValue(bool value){
    checkBoxController.text =value? "Accepted" : "Not Accepted";
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>GeneralAlertDialog().customAlertDialog(context),
       
      
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: basePadding,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Register",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                  getSizedBox(5),
                  Center(
                    child: Text(
                      "Create an account for using the app!",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  getSizedBox(
                    5,
                  ),
                  const Text("Name"),
                  getSizedBox(10),
                  GeneralTextField(
                      title: "name",
                      controller: nameController,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      validate: (value) =>
                          value!.trim().isEmpty ? "plese enter a name" : null),
                  getSizedBox(5),
                  const Text("Username"),
                  getSizedBox(5),
                  GeneralTextField(
                      title: "username",
                      controller: usernameController,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      validate: (value) =>
                          value!.trim().isEmpty ? "plese enter a username" : null),
                  getSizedBox(5),
                  const Text("Email"),
                  getSizedBox(5),
                  GeneralTextField(
                      title: "password",
                      isObscure: true,
                      controller: passwordController,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      validate: (value) =>
                          value!.trim().isEmpty ? "plese enter a password" : null),
    
                          getSizedBox(10),
                          const Text("Gender"),
                           GeneralRadioButton(changeGenderValue),
                          getSizedBox(5),
                          // getSizedBox(5),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Row(
                          //       children: const[
                          //         Text("Staff"),
                          //       ],
                          //     ),
                          //     const GeneralSwitch(),
                          //   ],
                          // ),
                          //  const Text("Staff"),
                          //     const CustomSlider(),
                          //     getSizedBox(15),
                          Row(
                            children:  [
                               GenrealCheckBox(changeCheckBoxValue),
                              const Text("I agreed to privacy and policy"),
                            ],
                          ),
                          getSizedBox(10),
                          Center(
                            child: ElevatedButton(
                              onPressed: ()async{
                                // if (formKey.currentState!.validate()){
                                //   }
                                final toRegister = await GeneralButtomSheet().
                                customAlertDialog(context);
                                if (toRegister){
                                print("The name is "+ nameController.text);
                                print("The username is"+usernameController.text);
                                print("The email is"+passwordController.text);
                                print("The gender is"+genderController.text);
                                print("The privacy and policy is "+checkBoxController.text);
                               
                               Navigator.of(context).push(MaterialPageRoute(builder: (_)=> LoginScreen()));
                                }
                              },
                             child: const Text("Register"),
                             ),
                          ),
                ],
              ), 
            ),
          ),
        ),
      ),
    );
  }

  Widget getSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
class CustomSlider extends StatefulWidget {
  const CustomSlider({ Key? key }) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  double sliderValue =0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Slider(value: sliderValue,
        min: 5000,
        max: 15000,
        activeColor: Colors.red,
        inactiveColor:Colors.red.shade200,
        
         onChanged: (value){
           
          setState(() => sliderValue=value);

        }
        ),
        Text("The selected value is ${sliderValue.toStringAsFixed(2)}")
      ],
    );
  }
}
