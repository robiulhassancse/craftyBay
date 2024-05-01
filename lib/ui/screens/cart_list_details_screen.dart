import 'package:ecommerce/ui/widgets/home/custom_stepper.dart';
import 'package:flutter/material.dart';

class CartListDetailsScreen extends StatefulWidget {
  const CartListDetailsScreen({super.key});

  @override
  State<CartListDetailsScreen> createState() => _CartListDetailsScreenState();
}

class _CartListDetailsScreenState extends State<CartListDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text(
            'Cart',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          elevation: 1,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  child: Column(
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://e7.pngegg.com/pngimages/820/94/png-clipart-shoe-nike-air-max-sneakers-running-running-shoes-orange-outdoor-shoe.png'),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'New Year Special shoe',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: ('Color: Red'),
                                                        ),
                                                        TextSpan(
                                                          text: ('Color: Red'),
                                                        ),
                                                      ]))
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.delete_forever_outlined,
                                              size: 30,
                                              color: Colors.grey,
                                            ))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '\$100',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14.0),
                                          child: CustomStepper(
                                              lowerLimit: 1,
                                              upperLimit: 10,
                                              stepValue: 1,
                                              value: 1,
                                              onChange: (int Index) {}),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Total Price',
                          style:
                          TextStyle(color: Colors.blueGrey, fontSize: 16),
                        ),
                        Text(
                          '\$100,000.00',
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
                          onPressed: () {}, child: const Text('Checkout',style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.8,
                      ),)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
