class Episode {
  String id;
  String? title;
  String? image;
  String? imageHash;
  int number;
  dynamic createdAt;
  String? description;
  String? url;

  Episode({
    required this.id,
    this.title,
    this.image,
    this.imageHash,
    required this.number,
    this.createdAt,
    this.description,
    this.url,
  });
}
