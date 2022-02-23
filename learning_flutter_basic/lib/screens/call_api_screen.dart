import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:learning_flutter_basic/constants/constant.dart';
import 'package:learning_flutter_basic/models/task_model.dart';
class CallApiScreen extends StatelessWidget {
  const CallApiScreen(this.text, {Key? key}) : super(key: key);

  final String text;
  // final List<TaskModel> task;
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Api"),
      ),
      body: const Padding(
        padding: basePadding,
        // child: SingleChildScrollView(child: Text(text)),
      child: Card(
        child: ListTile(
          selected: true,
          selectedTileColor: Colors.blue,
          leading: CircleAvatar(
            child: Text("task"),
          ),
          title: Text("title"),
        ),
      ),
      ),
    );
  }
}
