import 'package:ecommerce/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state_holder_binder.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CraftyBay',
      initialBinding: StateHolderBinder(),
      home: const SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              )),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              )),
        ),


        )
    );
  }

}
