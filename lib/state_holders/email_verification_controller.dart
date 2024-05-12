import 'package:ecommerce/data/model/response_object.dart';
import 'package:ecommerce/data/utility/network_caller.dart';
import 'package:ecommerce/data/utility/urls.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController{
 bool _emailVerificationInProgress = false;
 String _message= '';

 bool get emailVerificationInProgress => _emailVerificationInProgress;
 String get message => _message;

 Future<bool> emailVerify(String email) async{
   _emailVerificationInProgress = true;
   update();
   final ResponseObject response = await NetworkCaller.getRequest(Urls.emailVerification(email));
   _emailVerificationInProgress = false;
   update();
   if(response.isSuccess){
     _message = response.responseBody['data'] ?? '';
     return true;
   }else{
     return false;
   }
 }

}