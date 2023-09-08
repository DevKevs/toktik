// To parse this JSON data, do
//
//     final LocalVideoModel = LocalVideoModelFromJson(jsonString);

import 'dart:convert';

import '../../domain/entities/video_post.dart';

LocalVideoModel localVideoModelFromJson(String str) =>
    LocalVideoModel.fromJson(json.decode(str));

String localVideoModelToJson(LocalVideoModel data) =>
    json.encode(data.toJson());

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int? likes;
  final int? views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes,
    this.views,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
