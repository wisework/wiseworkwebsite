// ignore_for_file: public_member_api_docs, sort_constructors_first

class Package {
  final String title;
  final List<String> children;
  Package({
    required this.title,
    required this.children,
  });

  Package copyWith({
    String? title,
    List<String>? children,
  }) {
    return Package(
      title: title ?? this.title,
      children: children ?? this.children,
    );
  }
}
