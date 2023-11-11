import 'package:flutter/foundation.dart';

class JobProvider extends ChangeNotifier {
  bool isButtonTapped = false;

  void toggleButtonTap() {
    isButtonTapped = !isButtonTapped;
    notifyListeners();
  }
}
