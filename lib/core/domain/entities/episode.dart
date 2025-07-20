class Episode {
  int id;
  int animeId;
  int episode;
  int episode2;
  String edition;
  String title;
  String snapshot;
  String disc;
  String audio;
  String duration;
  String session;
  int filler;
  String description;
  DateTime createdAt;

  Episode({
    required this.id,
    required this.animeId,
    required this.episode,
    required this.episode2,
    required this.edition,
    required this.title,
    required this.snapshot,
    required this.disc,
    required this.audio,
    required this.duration,
    required this.session,
    required this.filler,
    required this.description,
    required this.createdAt,
  });
}
