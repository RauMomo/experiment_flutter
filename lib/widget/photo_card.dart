import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/on_context.dart';
import 'package:flutter_slicing/view/detail_page.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    super.key,
    required this.image,
    required this.hastag,
  });

  final String image, hastag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            context.to(child: const DetailPage());
          },
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '  $hastag',
          style: TextStyle(color: Colors.black.withOpacity(0.5)),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
