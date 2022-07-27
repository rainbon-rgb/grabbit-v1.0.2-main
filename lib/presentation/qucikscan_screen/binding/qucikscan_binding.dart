import '../controller/qucikscan_controller.dart';
import 'package:get/get.dart';

class QucikscanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QucikscanController());
  }
}
