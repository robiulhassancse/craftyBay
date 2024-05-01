import 'package:ecommerce/ui/widgets/home/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrdouctCard extends StatelessWidget {
  const PrdouctCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>const ProductDetails());
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          width: 125,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png'),
                    ),
                    color: Colors.green.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Nike shoe AK87643890934',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$100',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        const Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border,
                              size: 16,
                              color: Colors.amber,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(4)),
                          color: Colors.green,
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}