class ChampionImage {
  static const String _baseUrl = "https://ddragon.leagueoflegends.com/cdn";
  static const String _defaultVersion = "15.18.1";

  static String getUrl(
    String championName, {
    String version = _defaultVersion,
  }) {
    return "$_baseUrl/$version/img/champion/$championName.png";
  }
}
