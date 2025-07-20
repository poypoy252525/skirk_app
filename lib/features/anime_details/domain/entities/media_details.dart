import 'package:skirk_app/features/anime_details/data/models/media_details_model/media_details_model.dart';

class MediaDetails {
  final int id;
  final int malId;
  final String title;
  final String description;
  final String status;
  CoverImage coverImage;
  String? bannerImage;
  int? score;
  String? format;

  MediaDetails({
    required this.id,
    required this.malId,
    required this.title,
    required this.description,
    required this.status,
    required this.coverImage,
    this.bannerImage,
    this.score,
    this.format,
  });
}
