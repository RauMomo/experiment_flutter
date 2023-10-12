import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              image,
              scale: 1.8,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
