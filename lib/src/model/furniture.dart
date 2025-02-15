import 'package:office_app_store/src/model/furniture_color.dart';

class Furniture {
  String title;
  String subtitle;
  String description;
  List<String> images;
  bool isFavorite;
  List<FurnitureColor> colors;

  Furniture({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.images,
    this.isFavorite = false,
    required this.colors,
  });
}
