import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child:
      Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8)
            ),
            child:  const Icon(Icons.shop,size: 30,color: Colors.green,),
          ),
          const SizedBox(height: 4,),
          const Text('Electronics',style: TextStyle(
            fontSize: 15,
            color: Colors.green,
            letterSpacing: 0.3,
          ),)
        ],
      ),
    );
  }
}