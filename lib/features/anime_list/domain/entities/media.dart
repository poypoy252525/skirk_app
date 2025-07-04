class Media {
  final int id;
  final String? title;
  final String? coverImage;
  final int? year;
  final String? format;
  final List<String>? genres;

  Media({
    required this.id,
    this.title,
    this.coverImage,
    this.year,
    this.format,
    this.genres,
  });
}
