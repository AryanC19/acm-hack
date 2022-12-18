import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:visualizer/data/category_data.dart';

class CategoryProvider extends ChangeNotifier {

  List<Categories> availableCategories = [
   Sofa, Desk, Bed, PhotoFrames, Runner, Chair,
  ];

  List<Categories> getAvailableCategories(){
    return availableCategories;
  }

}