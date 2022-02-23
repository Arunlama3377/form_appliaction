import 'package:flutter/material.dart';
import 'package:learning_flutter_basic/constants/constant.dart';

class GeneralButtomSheet {
  customAlertDialog(BuildContext context) async{
    return await showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      builder: (context) {
        return Padding(
          padding: basePadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Do yo want to Register???",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pop(true);
                  }, child: const Text("Yes"),
                  style:ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ), 
                  ),
                  const SizedBox(width: 30,
                  ),
                  ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text("No"),
                  style:ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ) ,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
