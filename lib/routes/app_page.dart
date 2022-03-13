import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../pages/count_page.dart';
import '../pages/buscador_page.dart';
import '../bindings/count_binding.dart';
import '../bindings/buscador_binding.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
      binding: BuscadorBinding(),
    ),
    GetPage(
      name: RouteName.count,
      page: () => CountPage(),
      binding: CountBinding(),
    ),
    GetPage(
      name: RouteName.buscador,
      page: () => BuscadorPage(),
      binding: BuscadorBinding(),
    ),
  ];
}
