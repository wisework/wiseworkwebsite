// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PakageModel {
  final String title;
  final String imageUrl;
  final String description;

  final String page;
  final String detail;
  // final String? routePath;
  const PakageModel({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.page,
    required this.detail,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'imageUrl': imageUrl,
        'description': description,
        'page': page,
        'detail': detail,
      };

  factory PakageModel.fromJson(Map<String, dynamic> map) {
    return PakageModel(
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
      page: map['page'] as String,
      detail: map['detail'] as String,
    );
  }

  PakageModel copyWith({
    String? title,
    String? imageUrl,
    String? description,
    String? page,
    String? detail,
  }) {
    return PakageModel(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      page: page ?? this.page,
      detail: detail ?? this.detail,
    );
  }
}
