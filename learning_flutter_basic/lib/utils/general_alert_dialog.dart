import 'package:flutter/material.dart';


class GeneralAlertDialog {
  customLoadingDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 20,
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(
                width: 20,
              ),
              Text("Loading"),
            ],
          ),
        );
      },
    );
  }

 customAlertDialog(BuildContext context) async{
    // bool toExixt = false;
    final toExit =  await showDialog <bool> (
        context: context,
        builder: (_) => AlertDialog(
              title: const Text("Do yo want to exit"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                    // toExixt = true;
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("No"),
                ),
              ],
            ));
              print("my name is arun");
              print("i ${toExit! ? '':'dont'}want to exit");
            }
            
  
}
