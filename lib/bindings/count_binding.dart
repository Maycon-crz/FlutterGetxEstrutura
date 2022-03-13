import 'package:get/get.dart';
import '../controllers/count_controller.dart';

class CountBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountController());
  }
}
