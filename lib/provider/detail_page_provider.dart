import 'package:flutter/material.dart';

class DetailPageProvider with ChangeNotifier {
  int? _cindex;
  int? get cindex => _cindex;

  void setCindex(int newIndex) {
    _cindex = newIndex;
    notifyListeners();
  }
}
