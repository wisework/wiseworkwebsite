// ignore_for_file: public_member_api_docs, sort_constructors_first

class Package {
  final String title;
  final List<String> children;
  final bool position;
  final bool dense;
  Package({
    required this.title,
    required this.children,
    required this.position,
    required this.dense,
  });

  Package copyWith(
      {String? title, List<String>? children, bool? position, bool? dense}) {
    return Package(
      title: title ?? this.title,
      children: children ?? this.children,
      position: position ?? this.position,
      dense: dense ?? this.dense,
    );
  }
}
