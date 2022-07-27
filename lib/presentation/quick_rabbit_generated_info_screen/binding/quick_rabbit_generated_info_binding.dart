import '../controller/quick_rabbit_generated_info_controller.dart';
import 'package:get/get.dart';

class QuickRabbitGeneratedInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuickRabbitGeneratedInfoController());
  }
}
