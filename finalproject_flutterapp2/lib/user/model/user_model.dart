class NewspaperModel {
  final String title;
  final String description;
  final String image;

  NewspaperModel({
    required this.title,
    required this.description,
    required this.image,
  });

  factory NewspaperModel.fromJson(Map<String, dynamic> json) {
    return NewspaperModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
