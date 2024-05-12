import 'package:ecommerce/data/model/response_object.dart';
import 'package:ecommerce/data/utility/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController{
  bool _otpVerificationInProgress = false;

  String _message='';

  bool get otpVerificationInProgress => _otpVerificationInProgress;
  String get message => _message;

  Future<bool> otpVerify(String email, String otp) async {
    _otpVerificationInProgress = true;
    update();
    final ResponseObject response = await NetworkCaller.getRequest(Urls.otpVerification(email, otp));
    _otpVerificationInProgress = false;
    update();
    if(response.isSuccess){
      return true;
    }else{
      _message = response.responseBody['data'] ?? '';
      return false;
    }
  }
}