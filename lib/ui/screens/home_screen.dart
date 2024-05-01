import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/ui/screens/category_list_screen.dart';
import 'package:ecommerce/ui/screens/popular_list_screen.dart';
import 'package:ecommerce/ui/utility/image_assets.dart';
import 'package:ecommerce/ui/widgets/home/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../widgets/circular_icon_button.dart';
import '../widgets/home/category_card.dart';
import '../widgets/home/home_section_title.dart';
import '../widgets/home/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(
          children: [
            SvgPicture.asset(ImageAssets.craftyLogoNavSVG),
            const Spacer(),
            CircularIconButton(
              onTap: () {},
              icon: Icons.notifications_active,
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              onTap: () {},
              icon: Icons.phone,
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              onTap: () {},
              icon: Icons.person,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Colors.green,
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeSlider(),
              HomeSectionTitle(
                title: 'Categories',
                onTap: () {
                  Get.to(()=>const CategoryListScreen());
                },
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CategoryCard();
                    }),
              ),
              HomeSectionTitle(
                title: 'Popular',
                onTap: () {
                 Get.to(()=>PopularListScreen());
                },
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const PrdouctCard();
                    }),
              ),
              HomeSectionTitle(title: 'Special', onTap: (){}),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                  return const PrdouctCard();
                }),
              ),
              HomeSectionTitle(title: 'New', onTap: (){}),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return const PrdouctCard();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}


