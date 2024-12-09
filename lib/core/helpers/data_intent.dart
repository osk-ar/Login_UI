class DataIntent {
  static double? _score;

  static void setScore(double score) {
    _score = score;
  }

  static double? getScore() => _score;

  static void deleteScore() {
    _score = null;
  }
}
