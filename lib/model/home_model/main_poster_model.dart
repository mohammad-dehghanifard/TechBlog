class HomePosterModel {
  final String id;
  final String title;
  final String image;

  HomePosterModel({required this.id, required this.title, required this.image});

  factory HomePosterModel.fromJson(Map<String, dynamic> json) {
    return HomePosterModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}