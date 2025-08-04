class Media {
  final int id;
  final int idMal;
  final String? title;
  final CoverImage? coverImage;
  final int? year;
  final String? format;
  final List<String>? genres;

  Media({
    required this.id,
    required this.idMal,
    this.title,
    this.coverImage,
    this.year,
    this.format,
    this.genres,
  });
}

class CoverImage {
  final String? extraLarge;
  final String? large;
  final String? medium;
  final String? color;

  CoverImage({this.color, this.extraLarge, this.large, this.medium});
}
