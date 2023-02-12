// ignore_for_file: public_member_api_docs, sort_constructors_first

class Package {
  final String title;
  final List<String> children;
  final bool position;
  Package({
    required this.title,
    required this.children,
    required this.position,
  });

  Package copyWith({String? title, List<String>? children, bool? position}) {
    return Package(
      title: title ?? this.title,
      children: children ?? this.children,
      position: position ?? this.position,
    );
  }
}
