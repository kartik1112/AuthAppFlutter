import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  SquareTile({required this.imagePath, super.key});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    );
  }
}
