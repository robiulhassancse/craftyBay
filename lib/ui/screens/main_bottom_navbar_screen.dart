import 'package:ecommerce/ui/screens/cart_list_details_screen.dart';
import 'package:ecommerce/ui/screens/category_list_screen.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/screens/wish_list_screen.dart';
import 'package:ecommerce/state_holders/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  MainBottomNavController mainBottomNavController = Get.put(MainBottomNavController());
  final List<Widget> _screen =[
    const HomeScreen(),
    const CategoryListScreen(),
    const CartListDetailsScreen(),
    const WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
        return GetBuilder<MainBottomNavController>(
          builder: (controller) {
            return Scaffold(
              body: _screen[controller.currentSelectedIndex],

              bottomNavigationBar: BottomNavigationBar(

                currentIndex:controller.currentSelectedIndex ,
                onTap: controller.changeScreen,
                showUnselectedLabels: true,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.green,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Categories'),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist'),
                ],
              ),
            );
          }
        );


  }
}
