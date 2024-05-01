import 'package:ecommerce/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                animationDuration: Duration(milliseconds: 300),
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
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
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
    );
  }
}
