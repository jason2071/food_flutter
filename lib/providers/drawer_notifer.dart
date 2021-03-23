import 'package:flutter/foundation.dart';

class DrawerNotifier extends ChangeNotifier {
  double _xOffset = 0;
  double _yOffset = 0;
  double _scaleFactor = 1;
  bool _isDrawerOpen = false;
  int _currentPage = 0;

  double get xOffset => _xOffset;
  double get yOffset => _yOffset;
  double get scaleFactor => _scaleFactor;
  bool get isDrawerOpen => _isDrawerOpen;
  int get currentPage => _currentPage;

  setDrawer(
    bool isDrawerOpen,
  ) {
    if (isDrawerOpen) {
      _xOffset = 230;
      _yOffset = 150;
      _scaleFactor = 0.6;
      _isDrawerOpen = true;
    } else {
      _xOffset = 0;
      _yOffset = 0;
      _scaleFactor = 1;
      _isDrawerOpen = false;
    }

    notifyListeners();
  }

  setCurrendPage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
