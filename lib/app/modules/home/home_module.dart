import 'package:flutter_modular/flutter_modular.dart';
import 'package:kudi/app/modules/home/controller/home_controller.dart';

import 'view/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
