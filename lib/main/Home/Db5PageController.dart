import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

enum Db5Page {
  Dashboard,
  Health,
  Meditation,
  Sleep,
  Sounds,
  Tasks,
}

class Db5PageController extends PageController {
  late final ValueNotifier<int> pageIndex;

  Db5PageController({int initialPage = 0}) : super(initialPage: initialPage) {
    pageIndex = ValueNotifier(0);
  }

  void goTo(Db5Page page) {
    pageIndex.value = page.index;
    super.animateToPage(
      page.index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

  @override
  void addListener(void Function() listener) {
    super.addListener(listener);
  }

  @override
  void notifyListeners() {
    pageIndex.value = _currentPage;
    super.notifyListeners();
  }

  int get _currentPage {
    return page!.round();
  }
}
