import 'package:ecommerce/state_holders/email_verification_controller.dart';
import 'package:ecommerce/state_holders/otp_verification_controller.dart';
import 'package:ecommerce/state_holders/main_bottom_nav_controller.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
  }

}