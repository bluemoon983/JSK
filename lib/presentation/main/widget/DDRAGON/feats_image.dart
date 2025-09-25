class FeatsImage {
  static const String _baseUrl = "https://ddragon.leagueoflegends.com/cdn";
  static const String _defaultVersion = "15.18.1";

  static String getUrl(String featsImage, {String version = _defaultVersion}) {
    return "$_baseUrl/$version/img/feats/$featsImage.png";
  }
}
