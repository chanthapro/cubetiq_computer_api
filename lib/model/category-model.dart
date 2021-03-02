import 'package:cubetiq_computer_api/model/pagination.dart';

class Category {
  int id;
  String code;
  String name;
  Map<String, dynamic> config;

  Category({this.id, this.code, this.name, this.config});

  factory Category.fromJson(Map<String, dynamic> json) => Category(
      id: json["id"] == null ? null : int.parse(json["id"]),
      code: json["code"] == null ? null : json["code"],
      name: json["name"] == null ? null : json["name"]);
}

class CategoryResponse {
  List<Category> categories;
  Pagination pagination;

  CategoryResponse({this.categories, this.pagination});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      CategoryResponse(
          categories: json["data"] == null
              ? null
              : List<Category>.from(
                  json["data"].map((x) => Category.fromJson(x))),
          pagination: json["pages"] == null
              ? null
              : Pagination.fromJson(json["pages"]));
}
