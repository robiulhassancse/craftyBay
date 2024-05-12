import 'package:ecommerce/state_holders/email_verification_controller.dart';
import 'package:ecommerce/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                SvgPicture.asset(
                  ImageAssets.craftyLogoSVG,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Welcome Back',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Please Enter Your Email Address',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (String? text){
                    if(text?.isEmpty ?? true){
                      return 'Enter your email address';
                    }else if(text!.isEmail == false){
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                SizedBox(
                    width: double.infinity,
                  child: GetBuilder<EmailVerificationController>(
                    // init: Get.find<EmailVerificationController>(),
                      builder: (controller) {
                        if(controller.emailVerificationInProgress){
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ElevatedButton(
                            onPressed: () async {
                              if(_formKey.currentState!.validate()){
                                  final response = await controller.emailVerify(_emailTEController.text.trim());
                                  if(response){
                                    Get.to(()=> OtpVerificationScreen(email: _emailTEController.text.trim(),));
                                  }else{
                                    Get.snackbar('Try Again', 'Email verification failed');
                                  }
                              }
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ));
                      }
                    ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
