// To parse this JSON data, do
//
//     final mediaDetails = mediaDetailsFromJson(jsonString);

import 'dart:convert';

MediaDetails mediaDetailsFromJson(String str) =>
    MediaDetails.fromJson(json.decode(str));

String mediaDetailsToJson(MediaDetails data) => json.encode(data.toJson());

class MediaDetails {
  int? id;
  int? idMal;
  Title? title;
  String? type;
  String? format;
  String? status;
  String? description;
  EndDate? startDate;
  EndDate? endDate;
  String? season;
  int? seasonYear;
  int? episodes;
  int? duration;
  dynamic chapters;
  dynamic volumes;
  String? countryOfOrigin;
  bool? isLicensed;
  String? source;
  dynamic hashtag;
  Trailer? trailer;
  int? updatedAt;
  CoverImage? coverImage;
  String? bannerImage;
  List<String>? genres;
  List<String>? synonyms;
  int? averageScore;
  int? meanScore;
  int? popularity;
  bool? isLocked;
  int? trending;
  int? favourites;
  List<Tag>? tags;
  Relations? relations;
  AiringSchedule? characters;
  AiringSchedule? staff;
  AiringSchedule? studios;
  bool? isFavourite;
  bool? isFavouriteBlocked;
  bool? isAdult;
  dynamic nextAiringEpisode;
  AiringSchedule? airingSchedule;
  List<StreamingEpisode>? streamingEpisodes;
  List<ExternalLink>? externalLinks;

  MediaDetails({
    this.id,
    this.idMal,
    this.title,
    this.type,
    this.format,
    this.status,
    this.description,
    this.startDate,
    this.endDate,
    this.season,
    this.seasonYear,
    this.episodes,
    this.duration,
    this.chapters,
    this.volumes,
    this.countryOfOrigin,
    this.isLicensed,
    this.source,
    this.hashtag,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.bannerImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
    this.trending,
    this.favourites,
    this.tags,
    this.relations,
    this.characters,
    this.staff,
    this.studios,
    this.isFavourite,
    this.isFavouriteBlocked,
    this.isAdult,
    this.nextAiringEpisode,
    this.airingSchedule,
    this.streamingEpisodes,
    this.externalLinks,
  });

  factory MediaDetails.fromJson(Map<String, dynamic> json) => MediaDetails(
    id: json["id"],
    idMal: json["idMal"],
    title: json["title"] == null ? null : Title.fromJson(json["title"]),
    type: json["type"],
    format: json["format"],
    status: json["status"],
    description: json["description"],
    startDate: json["startDate"] == null
        ? null
        : EndDate.fromJson(json["startDate"]),
    endDate: json["endDate"] == null ? null : EndDate.fromJson(json["endDate"]),
    season: json["season"],
    seasonYear: json["seasonYear"],
    episodes: json["episodes"],
    duration: json["duration"],
    chapters: json["chapters"],
    volumes: json["volumes"],
    countryOfOrigin: json["countryOfOrigin"],
    isLicensed: json["isLicensed"],
    source: json["source"],
    hashtag: json["hashtag"],
    trailer: json["trailer"] == null ? null : Trailer.fromJson(json["trailer"]),
    updatedAt: json["updatedAt"],
    coverImage: json["coverImage"] == null
        ? null
        : CoverImage.fromJson(json["coverImage"]),
    bannerImage: json["bannerImage"],
    genres: json["genres"] == null
        ? []
        : List<String>.from(json["genres"]!.map((x) => x)),
    synonyms: json["synonyms"] == null
        ? []
        : List<String>.from(json["synonyms"]!.map((x) => x)),
    averageScore: json["averageScore"],
    meanScore: json["meanScore"],
    popularity: json["popularity"],
    isLocked: json["isLocked"],
    trending: json["trending"],
    favourites: json["favourites"],
    tags: json["tags"] == null
        ? []
        : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
    relations: json["relations"] == null
        ? null
        : Relations.fromJson(json["relations"]),
    characters: json["characters"] == null
        ? null
        : AiringSchedule.fromJson(json["characters"]),
    staff: json["staff"] == null
        ? null
        : AiringSchedule.fromJson(json["staff"]),
    studios: json["studios"] == null
        ? null
        : AiringSchedule.fromJson(json["studios"]),
    isFavourite: json["isFavourite"],
    isFavouriteBlocked: json["isFavouriteBlocked"],
    isAdult: json["isAdult"],
    nextAiringEpisode: json["nextAiringEpisode"],
    airingSchedule: json["airingSchedule"] == null
        ? null
        : AiringSchedule.fromJson(json["airingSchedule"]),
    streamingEpisodes: json["streamingEpisodes"] == null
        ? []
        : List<StreamingEpisode>.from(
            json["streamingEpisodes"]!.map((x) => StreamingEpisode.fromJson(x)),
          ),
    externalLinks: json["externalLinks"] == null
        ? []
        : List<ExternalLink>.from(
            json["externalLinks"]!.map((x) => ExternalLink.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "idMal": idMal,
    "title": title?.toJson(),
    "type": type,
    "format": format,
    "status": status,
    "description": description,
    "startDate": startDate?.toJson(),
    "endDate": endDate?.toJson(),
    "season": season,
    "seasonYear": seasonYear,
    "episodes": episodes,
    "duration": duration,
    "chapters": chapters,
    "volumes": volumes,
    "countryOfOrigin": countryOfOrigin,
    "isLicensed": isLicensed,
    "source": source,
    "hashtag": hashtag,
    "trailer": trailer?.toJson(),
    "updatedAt": updatedAt,
    "coverImage": coverImage?.toJson(),
    "bannerImage": bannerImage,
    "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
    "synonyms": synonyms == null
        ? []
        : List<dynamic>.from(synonyms!.map((x) => x)),
    "averageScore": averageScore,
    "meanScore": meanScore,
    "popularity": popularity,
    "isLocked": isLocked,
    "trending": trending,
    "favourites": favourites,
    "tags": tags == null
        ? []
        : List<dynamic>.from(tags!.map((x) => x.toJson())),
    "relations": relations?.toJson(),
    "characters": characters?.toJson(),
    "staff": staff?.toJson(),
    "studios": studios?.toJson(),
    "isFavourite": isFavourite,
    "isFavouriteBlocked": isFavouriteBlocked,
    "isAdult": isAdult,
    "nextAiringEpisode": nextAiringEpisode,
    "airingSchedule": airingSchedule?.toJson(),
    "streamingEpisodes": streamingEpisodes == null
        ? []
        : List<dynamic>.from(streamingEpisodes!.map((x) => x.toJson())),
    "externalLinks": externalLinks == null
        ? []
        : List<dynamic>.from(externalLinks!.map((x) => x.toJson())),
  };
}

class AiringSchedule {
  List<NodeElement>? nodes;

  AiringSchedule({this.nodes});

  factory AiringSchedule.fromJson(Map<String, dynamic> json) => AiringSchedule(
    nodes: json["nodes"] == null
        ? []
        : List<NodeElement>.from(
            json["nodes"]!.map((x) => NodeElement.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "nodes": nodes == null
        ? []
        : List<dynamic>.from(nodes!.map((x) => x.toJson())),
  };
}

class NodeElement {
  int? id;
  dynamic name;
  Image? image;
  String? description;
  String? gender;
  EndDate? dateOfBirth;
  dynamic age;
  bool? isAnimationStudio;

  NodeElement({
    this.id,
    this.name,
    this.image,
    this.description,
    this.gender,
    this.dateOfBirth,
    this.age,
    this.isAnimationStudio,
  });

  factory NodeElement.fromJson(Map<String, dynamic> json) => NodeElement(
    id: json["id"],
    name: json["name"],
    image: json["image"] == null ? null : Image.fromJson(json["image"]),
    description: json["description"],
    gender: json["gender"],
    dateOfBirth: json["dateOfBirth"] == null
        ? null
        : EndDate.fromJson(json["dateOfBirth"]),
    age: json["age"],
    isAnimationStudio: json["isAnimationStudio"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image?.toJson(),
    "description": description,
    "gender": gender,
    "dateOfBirth": dateOfBirth?.toJson(),
    "age": age,
    "isAnimationStudio": isAnimationStudio,
  };
}

class EndDate {
  int? year;
  int? month;
  int? day;

  EndDate({this.year, this.month, this.day});

  factory EndDate.fromJson(Map<String, dynamic> json) =>
      EndDate(year: json["year"], month: json["month"], day: json["day"]);

  Map<String, dynamic> toJson() => {"year": year, "month": month, "day": day};
}

class Image {
  String? large;
  String? medium;

  Image({this.large, this.medium});

  factory Image.fromJson(Map<String, dynamic> json) =>
      Image(large: json["large"], medium: json["medium"]);

  Map<String, dynamic> toJson() => {"large": large, "medium": medium};
}

class NameClass {
  String? first;
  dynamic middle;
  String? last;
  String? full;
  String? native;
  List<String>? alternative;
  List<String>? alternativeSpoiler;
  String? userPreferred;

  NameClass({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.alternative,
    this.alternativeSpoiler,
    this.userPreferred,
  });

  factory NameClass.fromJson(Map<String, dynamic> json) => NameClass(
    first: json["first"],
    middle: json["middle"],
    last: json["last"],
    full: json["full"],
    native: json["native"],
    alternative: json["alternative"] == null
        ? []
        : List<String>.from(json["alternative"]!.map((x) => x)),
    alternativeSpoiler: json["alternativeSpoiler"] == null
        ? []
        : List<String>.from(json["alternativeSpoiler"]!.map((x) => x)),
    userPreferred: json["userPreferred"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "middle": middle,
    "last": last,
    "full": full,
    "native": native,
    "alternative": alternative == null
        ? []
        : List<dynamic>.from(alternative!.map((x) => x)),
    "alternativeSpoiler": alternativeSpoiler == null
        ? []
        : List<dynamic>.from(alternativeSpoiler!.map((x) => x)),
    "userPreferred": userPreferred,
  };
}

class CoverImage {
  String? extraLarge;
  String? large;
  String? medium;
  String? color;

  CoverImage({this.extraLarge, this.large, this.medium, this.color});

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
    extraLarge: json["extraLarge"],
    large: json["large"],
    medium: json["medium"],
    color: json["color"],
  );

  Map<String, dynamic> toJson() => {
    "extraLarge": extraLarge,
    "large": large,
    "medium": medium,
    "color": color,
  };
}

class ExternalLink {
  int? id;
  String? url;
  String? site;
  int? siteId;
  String? type;
  String? language;
  String? color;
  String? icon;
  String? notes;
  bool? isDisabled;

  ExternalLink({
    this.id,
    this.url,
    this.site,
    this.siteId,
    this.type,
    this.language,
    this.color,
    this.icon,
    this.notes,
    this.isDisabled,
  });

  factory ExternalLink.fromJson(Map<String, dynamic> json) => ExternalLink(
    id: json["id"],
    url: json["url"],
    site: json["site"],
    siteId: json["siteId"],
    type: json["type"],
    language: json["language"],
    color: json["color"],
    icon: json["icon"],
    notes: json["notes"],
    isDisabled: json["isDisabled"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "site": site,
    "siteId": siteId,
    "type": type,
    "language": language,
    "color": color,
    "icon": icon,
    "notes": notes,
    "isDisabled": isDisabled,
  };
}

class Relations {
  List<Edge>? edges;

  Relations({this.edges});

  factory Relations.fromJson(Map<String, dynamic> json) => Relations(
    edges: json["edges"] == null
        ? []
        : List<Edge>.from(json["edges"]!.map((x) => Edge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": edges == null
        ? []
        : List<dynamic>.from(edges!.map((x) => x.toJson())),
  };
}

class Edge {
  String? relationType;
  EdgeNode? node;

  Edge({this.relationType, this.node});

  factory Edge.fromJson(Map<String, dynamic> json) => Edge(
    relationType: json["relationType"],
    node: json["node"] == null ? null : EdgeNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "relationType": relationType,
    "node": node?.toJson(),
  };
}

class EdgeNode {
  int? id;
  Title? title;
  CoverImage? coverImage;

  EdgeNode({this.id, this.title, this.coverImage});

  factory EdgeNode.fromJson(Map<String, dynamic> json) => EdgeNode(
    id: json["id"],
    title: json["title"] == null ? null : Title.fromJson(json["title"]),
    coverImage: json["coverImage"] == null
        ? null
        : CoverImage.fromJson(json["coverImage"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title?.toJson(),
    "coverImage": coverImage?.toJson(),
  };
}

class Title {
  String? romaji;
  String? english;
  String? native;
  String? userPreferred;

  Title({this.romaji, this.english, this.native, this.userPreferred});

  factory Title.fromJson(Map<String, dynamic> json) => Title(
    romaji: json["romaji"],
    english: json["english"],
    native: json["native"],
    userPreferred: json["userPreferred"],
  );

  Map<String, dynamic> toJson() => {
    "romaji": romaji,
    "english": english,
    "native": native,
    "userPreferred": userPreferred,
  };
}

class StreamingEpisode {
  String? thumbnail;
  String? title;
  String? url;

  StreamingEpisode({this.thumbnail, this.title, this.url});

  factory StreamingEpisode.fromJson(Map<String, dynamic> json) =>
      StreamingEpisode(
        thumbnail: json["thumbnail"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
    "thumbnail": thumbnail,
    "title": title,
    "url": url,
  };
}

class Tag {
  int? id;
  String? name;

  Tag({this.id, this.name});

  factory Tag.fromJson(Map<String, dynamic> json) =>
      Tag(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};
}

class Trailer {
  String? id;
  String? site;
  String? thumbnail;

  Trailer({this.id, this.site, this.thumbnail});

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      Trailer(id: json["id"], site: json["site"], thumbnail: json["thumbnail"]);

  Map<String, dynamic> toJson() => {
    "id": id,
    "site": site,
    "thumbnail": thumbnail,
  };
}
