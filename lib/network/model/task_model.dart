import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';
// flutter pub run build_runner build
@JsonSerializable()
class TaskModel {
 final int albumId;
 final int id;
 final String title;
 final String url;
 final String thumbnailUrl;

 const TaskModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl
  });

  factory TaskModel.fromJson(Map<String,dynamic> json) {
    return TaskModel(
      id:json['id'],
      albumId:json['albumId'],
      title:json['title'], 
      url:json['url'], 
      thumbnailUrl: json['thumbnailUrl']);
    }

  // Map<String,dynamic> toJson () => TaskModelToJson(this);
}