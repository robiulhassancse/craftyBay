import 'package:ecommerce/ui/screens/main_bottom_navbar_screen.dart';
import 'package:ecommerce/ui/utility/image_assets.dart';
import 'package:ecommerce/ui/widgets/home/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  Future<void> goToNextScreen() async {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.offAll(()=>const MainBottomNavBar());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: SvgPicture.asset(ImageAssets.craftyLogoSVG, width: 100,)),
          const Spacer(),
          const CircularProgressIndicator(),
          const Text('version 1.0'),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
