import 'package:get/get.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
