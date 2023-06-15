class PodcastModel {
  final String id;
  final String title;
  final String poster;
  final String catName;
  final String view;
  final String status;
  final String createdAt;

  PodcastModel({
    required this.id,
    required this.title,
    required this.poster,
    required this.catName,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  factory PodcastModel.fromJson(Map<String, dynamic> json) {
    return PodcastModel(
      id: json['id'],
      title: json['title'],
      poster: json['poster'],
      catName: json['cat_name'],
      view: json['view'],
      status: json['status'],
      createdAt: json['created_at'],
    );
  }
}