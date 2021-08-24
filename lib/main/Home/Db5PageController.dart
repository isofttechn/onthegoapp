import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Db5PageController {
  late final ValueNotifier<int> pageIndex;

  Db5PageController({int initialPage = 0}) {
    pageIndex = ValueNotifier(0);
  }

  void setValue(int index) {
    pageIndex.value = index;
  }

  void addListener(void Function() function) {
    pageIndex.addListener(function);
  }
}
