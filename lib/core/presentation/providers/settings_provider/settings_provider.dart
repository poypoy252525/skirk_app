import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AnimeProvider { animepahe, hianime, gogoanime }

final animeProvider = StateProvider<AnimeProvider>(
  (ref) => AnimeProvider.hianime,
);
