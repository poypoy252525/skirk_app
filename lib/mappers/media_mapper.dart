// lib/mappers/media_mapper.dart

import 'package:skirk_app/core/data/model/anilist/media_model.dart';
import 'package:skirk_app/core/domain/entities/media.dart';

extension MediaModelMapper on MediaModel {
  Media toEntity() {
    if (id == null || idMal == null) {
      throw ArgumentError('MediaModel.id and idMal must not be null');
    }

    return Media(
      id: id!,
      idMal: idMal!,
      coverImage: CoverImage(
        color: coverImage?.color,
        extraLarge: coverImage?.extraLarge,
        large: coverImage?.large,
        medium: coverImage?.medium,
      ),
      format: format,
      genres: genres,
      title: title?.english ?? title?.romaji,
      year: seasonYear,
    );
  }
}
