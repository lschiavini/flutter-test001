import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_interfaces/modular_interfaces.dart';

import '../../core/services/http_service.dart';
import 'data/repositories/home_repository_impl.dart';
import 'data/usecases/fetch_users_usecase_impl.dart';
import 'domain/repositories/home_repository.dart';
import 'domain/usecases/fetch_users/fetch_users_usecase.dart';
import 'presentation/controllers/home_controller.dart';
import 'presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> binds = <Bind<Object>>[
    Bind.lazySingleton(
      (Injector<dynamic> i) => HomeModule(),
    ),
    Bind.lazySingleton<HomeRepository>(
      (Injector<dynamic> i) => HomeRepositoryImpl(
        i.get<HttpService>(),
      ),
    ),
    Bind<FetchUsersUseCase>(
      (Injector<dynamic> i) => FetchUsersUseCaseImpl(
        i.get<HomeRepository>(),
      ),
    ),
    Bind.lazySingleton<HomeController>(
      (Injector<dynamic> i) => HomeController(
        i.get<FetchUsersUseCaseImpl>(),
      ),
    ),
  ];

  @override
  List<ModularRoute> routes = <ModularRoute>[
    ChildRoute<ModularRoute>(
      Modular.initialRoute,
      child: (
        BuildContext context,
        ModularArguments args,
      ) {
        return HomePage(
          Modular.get<HomeController>(),
        );
      },
    )
  ];

  @override
  void dispose() {
    Modular.get<HomeController>().dispose();
    super.dispose();
  }
}
