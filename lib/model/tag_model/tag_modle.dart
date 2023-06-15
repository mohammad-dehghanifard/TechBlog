class TagModel {
  final String id;
  final String title;

  TagModel({required this.id, required this.title});

  factory TagModel.fromJson(Map<String, dynamic> json) {
    return TagModel(
      id: json['id'],
      title: json['title'],
    );
  }
}