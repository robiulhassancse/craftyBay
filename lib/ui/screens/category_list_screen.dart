import 'package:ecommerce/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerce/ui/widgets/home/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          backgroundColor: Colors.white,
          elevation: 0,
         leading: IconButton(onPressed: (){
           Get.find<MainBottomNavController>().backToHome();
         }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ), itemBuilder: (context,index){
          return const FittedBox(child: CategoryCard());
        }),
      ),
    );
  }
}
