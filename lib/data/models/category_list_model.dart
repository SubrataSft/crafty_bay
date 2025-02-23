import 'package:crafty_bay/data/models/category_model.dart';

class CategoryListModel {
  String? msg;
  List<CategoryModel>? categoryLIst;

  CategoryListModel({this.msg, this.categoryLIst});

  CategoryListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      categoryLIst = <CategoryModel>[];
      json['data'].forEach((v) {
        categoryLIst!.add( CategoryModel.fromJson(v));
      });
    }
  }
}

