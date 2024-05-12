import 'package:ecommerce/state_holders/otp_verification_controller.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key, required this.email});
  final String email;

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {

  final TextEditingController _otpTEController = TextEditingController();
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

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
                  'Enter OTP Code',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'A 4 Digit OTP Code has been Sent',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),

                PinCodeTextField(
                  length: 4,
                  controller: _otpTEController,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.green,
                    selectedFillColor: Colors.green,
                    activeColor: Colors.green,
                    selectedColor: Colors.green,
                  ),
                  validator: (String?text){
                    if(text?.isEmpty ?? true){
                      return 'Otp code invalid';
                    }
                    return null;
                  },
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,

                  onCompleted: (v) {},
                  onChanged: (value) {
                    },appContext: context,
                ),


                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: GetBuilder<OtpVerificationController>(
                    builder: (controller) {
                      if(controller.otpVerificationInProgress){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ElevatedButton(
                        onPressed: () async {
                          if(_formKey.currentState!.validate());
                          final response = await controller.otpVerify(widget.email,_otpTEController.text.trim());
                          if(response){
                            Get.offAll(()=>const HomeScreen());
                          }else{
                            Get.snackbar('Try Again', 'Otp code failed');
                          }
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    }
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: 'This code will expire in ',
                      ),
                      TextSpan(
                        text: '120s',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ]
                  ),

                ),
                TextButton(onPressed: (){}, child: Text('Resend Code',style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16
                ),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
