import 'package:flutter/material.dart';

class HomeSectionTitle extends StatelessWidget {
  const HomeSectionTitle({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),),
        const Spacer(),
        TextButton(onPressed: onTap, child: const Text('See All',style: TextStyle(
          color: Colors.green,
          fontSize: 16,
        ),))
      ],
    );
  }
}