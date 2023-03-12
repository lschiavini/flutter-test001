import 'package:flutter_modular/flutter_modular.dart';

import 'core/interfaces/http_interface.dart';
import 'core/services/http_service.dart';
import 'package:modular_interfaces/modular_interfaces.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> binds = <Bind<Object>>[
    Bind.lazySingleton<IHttp>(
      (Injector<dynamic> i) => HttpService(),
    ),
  ];

  @override
  List<ModularRoute> routes = <ModularRoute>[
    ModuleRoute<ModularRoute>(
      Modular.initialRoute,
      module: HomeModule(),
    ),
  ];
}
