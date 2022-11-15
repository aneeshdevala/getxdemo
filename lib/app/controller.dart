import 'package:flutter/widgets.dart';

import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final titlecontroller = TextEditingController();
  var addtext = <String>[].obs;
  void updateButton() {
    addtext.add(titlecontroller.text.toString());
    update();
    titlecontroller.clear();
  }
}
