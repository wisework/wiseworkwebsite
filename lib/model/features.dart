// ignore_for_file: public_member_api_docs, sort_constructors_first

class FeatureModel {
  final String title;
  final String description;
  final String imageUrl;
  final String page;
  // final String? routePath;
  const FeatureModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.page,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
        'page': page,
      };

  factory FeatureModel.fromJson(Map<String, dynamic> map) {
    return FeatureModel(
      title: map['title'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      page: map['page'] as String,
    );
  }

  FeatureModel copyWith({
    String? title,
    String? description,
    String? imageUrl,
    String? page,
    String? detail,
  }) {
    return FeatureModel(
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      page: page ?? this.page,
    );
  }
}
