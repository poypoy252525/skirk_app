class MediaDetails {
  final int id;
  final String title;
  final String description;
  final String status;
  String? coverImage;
  String? bannerImage;
  int? score;
  String? format;

  MediaDetails({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    this.coverImage,
    this.bannerImage,
    this.score,
    this.format,
  });
}
