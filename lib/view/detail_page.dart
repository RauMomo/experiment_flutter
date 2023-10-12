import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/constant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(image12),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          profilePicture,
                          height: 45,
                          width: 45,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            const Text(
                              'yoonminho',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFC3C3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text('follow'),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "We were both young when I first saw youI close my eyes and the flashback startsI'm standin' thereOn a balcony in summer air",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "view all comments",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xFFC0C0C0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'more recomenndation',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF6F6F6F),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                image18,
                                width: 175,
                                height: 250,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(image9, scale: 1.9),
                            const SizedBox(height: 12),
                            Image.asset(image10, scale: 1.9),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
