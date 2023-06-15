class Poster {
  final String id;
  final String title;
  final String image;

  Poster({required this.id, required this.title, required this.image});

  factory Poster.fromJson(Map<String, dynamic> json) {
    return Poster(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}