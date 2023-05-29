// ignore_for_file: non_constant_identifier_names

class FruitsModel {
  static List<Item>? items;
}

class Item {
  final String title;
  final String month_of_cultivation;
  final String required_temperature;
  final String description;
  final String soil;
  final String cultivation_process;
  final String image_url;

  Item(
      {required this.title,
      required this.month_of_cultivation,
      required this.required_temperature,
      required this.description,
      required this.soil,
      required this.cultivation_process,
      required this.image_url});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      title: map["title"],
      month_of_cultivation: map["month_of_cultivation"],
      required_temperature: map["required_temperature"],
      description: map["description"],
      soil: map["soil"],
      cultivation_process: map["cultivation_process"],
      image_url: map["image_url"],
    );
  }

  toMap() => {
        "title": title,
        "month_of_cultivation": month_of_cultivation,
        "required_temperature": required_temperature,
        "description": description,
        "soil": soil,
        "cultivation_process": cultivation_process,
        "image_url": image_url
      };
}
