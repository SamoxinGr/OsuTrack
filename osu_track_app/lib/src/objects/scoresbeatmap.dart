// Score includes beatmap class to avoid beatmap request
class BeatmapScores{
  int?scoreId;
  List<dynamic> mods = [];
  var scorePoints;
  var accuracy;
  int?maxCombo;
  Map<String, dynamic>?mapStatistics;
  String?mapRank;
  String?dateOfScore;
  int?bestScoreOnMapId;
  var gainedPP;
  int?beatmapSetId;
  int?beatmapSetMapId;
  var difficultyRating;
  var beatmapLength;
  String?difficultyName;
  var OD;
  var AR;
  var BPM;
  var CS;
  var HP;
  String?beatmapURL;

  BeatmapScores({
    required this.scoreId,
    required this.accuracy,
    required this.mods,
    required this.scorePoints,
    required this.maxCombo,
    required this.mapStatistics,
    required this.mapRank,
    required this.dateOfScore,
    required this.bestScoreOnMapId,
    required this.gainedPP,
    required this.beatmapSetId,
    required this.beatmapSetMapId,
    required this.difficultyRating,
    required this.beatmapLength,
    required this.difficultyName,
    required this.OD,
    required this.AR,
    required this.BPM,
    required this.CS,
    required this.HP,
    required this.beatmapURL,
  });
  factory BeatmapScores.fromJson(Map<String, dynamic> json){
    return BeatmapScores(
      scoreId: json['id'],
      accuracy: json['accuracy'],
      mods: json['mods'],
      scorePoints: json['score'],
      maxCombo: json['max_combo'],
      mapStatistics: json['statistics'],
      mapRank: json['rank'],
      dateOfScore: json['created_at'],
      bestScoreOnMapId: json['best_id'],
      gainedPP: json['pp'],
      difficultyName: json['beatmap']['version'],
      beatmapSetId: json['beatmap']['beatmapset_id'],
      difficultyRating: json['beatmap']['difficulty_rating'],
      beatmapSetMapId: json['beatmap']['id'],
      beatmapLength: json['beatmap']['total_length'],
      OD: json['beatmap']['accuracy'],
      AR: json['beatmap']['ar'],
      BPM: json['beatmap']['bpm'],
      CS: json['beatmap']['cs'],
      HP: json['beatmap']['drain'],
      beatmapURL: json['beatmap']['url'],
    );
  }
}