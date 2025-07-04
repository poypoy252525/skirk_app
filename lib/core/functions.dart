String getCurrentSeason() {
  String season;
  DateTime now = DateTime.now();

  if (now.month >= 1 && now.month <= 3) {
    season = "WINTER";
  } else if (now.month >= 4 && now.month <= 6) {
    season = 'SPRING';
  } else if (now.month >= 7 && now.month <= 9) {
    season = 'SUMMER';
  } else {
    season = "FALL";
  }

  return season;
}
