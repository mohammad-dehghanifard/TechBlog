class Article {
  final String id;
  final String title;
  final String image;
  final String catId;
  final String catName;
  final String author;
  final String view;
  final String status;
  final String createdAt;

  Article({
    required this.id,
    required this.title,
    required this.image,
    required this.catId,
    required this.catName,
    required this.author,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      catId: json['cat_id'],
      catName: json['cat_name'],
      author: json['author'],
      view: json['view'],
      status: json['status'],
      createdAt: json['created_at'],
    );
  }
}