import 'package:ecommerce/ui/widgets/color_picker.dart';
import 'package:ecommerce/ui/widgets/home/custom_stepper.dart';
import 'package:ecommerce/ui/widgets/home/product_image_slider.dart';
import 'package:ecommerce/ui/widgets/home/review_section.dart';
import 'package:ecommerce/ui/widgets/size_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Color> colors = [
    Colors.black,
    Colors.green,
    Colors.deepPurple,
    Colors.orange,
    Colors.brown,
  ];
  List<String> sizes = [
    'S',
    'M',
    'XL',
    'XLL',
    'XXL',
  ];
  int _selectedColorIndex = 0;
  int _selectedSizeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const ProductImageSlider(),
                AppBar(
                  leading: const BackButton(
                    color: Colors.black54,
                  ),
                  backgroundColor: Colors.transparent,
                  title: const Text(
                    'Product Details',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                              child: Text(
                            'Happy New Year Special Deal Save 30%',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomStepper(
                                lowerLimit: 1,
                                upperLimit: 10,
                                stepValue: 1,
                                value: 1,
                                onChange: (int newValue) {}),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(()=>const ReviewListScreen());
                            },
                            child: const Text(
                              'Reviews',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        'Color',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        height: 30,
                        child: ColorPicker(onColorSelected: (int selectedSize){
                          _selectedColorIndex = selectedSize;
                        }, initialColorIndex: 0, colors: colors,)
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Size',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        height: 30,
                        child: SizePicker(sizes: sizes, onSelected: (int selectedSize){
                         _selectedSizeIndex = selectedSize;
                        }, initialSelected: 0),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        textAlign: TextAlign.justify,
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.''',
                        style: TextStyle(letterSpacing: 0.5),
                      )
                    ],
                  ),
                ),
              ),
            ),
            cartPriceBottomContainer,

          ],
        ),
      ),
    );
  }

  Container get cartPriceBottomContainer {
    return Container(
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Price',
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 16),
                      ),
                      Text(
                        '\$1,000',
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(

                        ),
                        onPressed: () {}, child: const Text('Add To Cart',style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.8,
                    ),)),
                  )
                ],
              ),
            ),
          );
  }
}





