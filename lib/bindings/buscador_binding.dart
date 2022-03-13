import 'package:get/get.dart';
import '../controllers/buscador_controller.dart';

class BuscadorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuscadorController());
  }
}
