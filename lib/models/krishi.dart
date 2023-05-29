class KishiModel {
  static List<Yojna>? yojna;
}

class Yojna {
  final String scheme_name;
  final String description;
  final String url;

  Yojna({
    required this.scheme_name,
    required this.description,
    required this.url,
  });
}
