import 'package:flutter/material.dart';

import '../../data/const.dart';
import '../../data/image/image.dart';

class LikeController extends ChangeNotifier{
  final List<MyImage> _images = kImageList;
  final List<MyImage> _like = [];

  List<MyImage> get myLike => _like;
  List<MyImage> get myImages => _images;

  void add(MyImage image) {
  _like.add(image);
  notifyListeners();
}

void remove(MyImage image) {
  _like.remove(image);
  notifyListeners();
}

bool isMarked(MyImage image) {
    return _like.contains(image);
  }

void removeAll() {
  _like.clear();
  notifyListeners();
}
}


