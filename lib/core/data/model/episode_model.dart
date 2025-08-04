class EpisodeModel {
  final String id;
  final String? title;
  final int number;
  final String? description;
  final String? image;

  EpisodeModel({
    required this.id,
    this.description,
    this.image,
    this.title,
    required this.number,
  });
}
