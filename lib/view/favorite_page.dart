import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/constant.dart';
import 'package:flutter_slicing/extension/models.dart';
import 'package:flutter_slicing/extension/on_context.dart';
import 'package:flutter_slicing/view/add_page.dart';
import 'package:flutter_slicing/view/home_page.dart';
import 'package:flutter_slicing/view/profile_page.dart';
import 'package:flutter_slicing/view/search_page.dart';
import 'package:flutter_slicing/widget/app_icon_button.dart';
import 'package:flutter_slicing/widget/photo_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Favorite',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 12),
              Column(
                children: List.generate(
                  favoriteList.length,
                  (x) => PhotoCard(
                    image: favoriteList[x][0],
                    hastag: favoriteList[x][1],
                  ),
                ),
              ),
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
                    context.to(child: const HomePage());
                  } else if (x == 1) {
                    context.to(child: const SearchPage());
                  } else if (x == 2) {
                    context.to(child: const AddPage());
                  } else if (x == 3) {
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
                isOn: [false, false, false, true, false][x],
              ),
            ),
        ],
      ),
    );
  }
}
