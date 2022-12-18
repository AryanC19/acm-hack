import 'package:flutter/material.dart';

class Categories {
  late String categoryName;
  late String categoryImage;
  Categories(this.categoryName,this.categoryImage);

  String getCategoryName(){
    return categoryName;
  }
}

Categories Sofa = Categories("sofa","images/sofa1.png");
Categories Desk = Categories("desk", "images/desk1.png");
Categories PhotoFrames = Categories("photo frames","images/photoframe1.png");
Categories Bed = Categories("bed", "images/bed1.png");
Categories Runner = Categories("runner","images/runner1.png");
Categories Chair = Categories("chairs", "images/chair1.png");
