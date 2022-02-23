class TaskModel{
  late int userId;
  late int title;
  late int completed;

TaskModel({
  required this.userId,
  required this.title,
  required this.completed,
});

TaskModel.fromjason(Map obj){
  userId =obj["userId"];
  userId =obj["title"];
  userId =obj["completed"];
}
}
