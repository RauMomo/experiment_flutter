import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/constant.dart';
import 'package:flutter_slicing/extension/models.dart';
import 'package:flutter_slicing/extension/on_context.dart';
import 'package:flutter_slicing/view/add_page.dart';
import 'package:flutter_slicing/view/favorite_page.dart';
import 'package:flutter_slicing/view/profile_page.dart';
import 'package:flutter_slicing/view/search_page.dart';
import 'package:flutter_slicing/widget/app_icon_button.dart';
import 'package:flutter_slicing/widget/photo_card.dart';
import 'package:flutter_slicing/widget/recomend_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: List.generate(
                  homepageList.length,
                  (x) => PhotoCard(
                    image: homepageList[x][0],
                    hastag: homepageList[x][1],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Column(
              //   children: List.generate(
              //     recommendList.length,
              //     (x) => RecommendCard(
              //       image: recommendList[x][0],
              //       text: recommendList[x][1],
              //     ),
              //   ),
              // ),
              // Image.asset(image18),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          for (int x = 0; x < 5; x++)
            Expanded(
              child: AppIconButton(
                onTap: () {
                  if (x == 0) {
                  } else if (x == 1) {
                    context.to(child: const SearchPage());
                  } else if (x == 2) {
                    context.to(child: const AddPage());
                  } else if (x == 3) {
                    context.to(child: const FavoritePage());
                  } else if (x == 4) {
                    context.to(child: const ProfilePage());
                  }
                },
                icon: [
                  iconHome,
                  iconSearch,
                  iconAdd,
                  iconFavorite,
                  iconProfile
                ][x],
                isOn: [true, false, false, false, false][x],
              ),
            ),
        ],
      ),
    );
  }
}
