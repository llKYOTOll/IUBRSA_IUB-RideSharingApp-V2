import 'package:get/get.dart';

import '../controller/onboarding_screen_controller.dart';

class OnboardingScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OnboardingScreenController(),
    );
  }
}
