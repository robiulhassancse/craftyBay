import 'package:ecommerce/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerce/ui/widgets/home/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home/product_card.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.find<MainBottomNavController>().backToHome();
        },icon: const Icon(Icons.arrow_back),)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ), itemBuilder: (context,index){
          return const FittedBox(child: PrdouctCard());
        }),
      ),
    );
  }
}
