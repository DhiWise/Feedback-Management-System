import '../controller/add_update_subscription_controller.dart';
import 'package:get/get.dart';

class AddUpdateSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddUpdateSubscriptionController());
  }
}
