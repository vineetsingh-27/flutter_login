// ignore_for_file: non_constant_identifier_names

class YojnaModel{
  static List<Yojna>? yojna;
}

class Yojna {
  final String scheme_name;
  final String scheme_desctiption;
  final String required_document;
  final String eligibility;
  final String scheme_url;

  Yojna({
    required this.scheme_name,
    required this.scheme_desctiption,
    required this.required_document,
    required this.eligibility,
    required this.scheme_url,
  });

  factory Yojna.fromMap(Map<String, dynamic> map) {
    return Yojna(
      scheme_name: map['scheme_name'],
      scheme_desctiption: map['scheme_desctiption'],
      required_document: map['required_document'],
      eligibility: map['eligibility'],
      scheme_url: map['scheme_url'],
    );
  }

  toMap() => {
      'scheme_name': scheme_name,
      'scheme_desctiption': scheme_desctiption,
      'required_document': required_document,
      'eligibility': eligibility,
      'scheme_url': scheme_url,
    };
}
