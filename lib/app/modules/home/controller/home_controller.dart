import 'dart:developer';

import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  double width = 90;
  @observable
  double marginBottom = 0;
  @observable
  bool navBarIsOpen = false;

  @action
  changeNavBar() {
    navBarIsOpen = !navBarIsOpen;
    if (navBarIsOpen) {
      width = 200;
      marginBottom = 80;
    } else {
      width = 90;
      marginBottom = 0;
    }
  }
}
