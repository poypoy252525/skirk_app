import 'package:http/http.dart';
import 'package:skirk_app/features/anime_details/data/models/episode_model/episode_model.dart';
import 'package:skirk_app/utils/hianime_scraper.dart';

class EpisodeRemoteDatasource {
  final Client _client;

  EpisodeRemoteDatasource(this._client);

  Future<List<EpisodeModel>> getEpisodes(int mediaId) async {
    final HianimeScraper scraper = HianimeScraper(_client);

    try {
      return scraper.getEpisodes(malId: mediaId);
    } catch (e) {
      throw Exception('Failed to get episodes from ID: $mediaId');
    }
  }
}
