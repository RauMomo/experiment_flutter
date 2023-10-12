import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/constant.dart';
import 'package:flutter_slicing/extension/models.dart';
import 'package:flutter_slicing/extension/on_context.dart';
import 'package:flutter_slicing/view/add_page.dart';
import 'package:flutter_slicing/view/favorite_page.dart';
import 'package:flutter_slicing/view/home_page.dart';
import 'package:flutter_slicing/view/profile_page.dart';
import 'package:flutter_slicing/widget/app_chip.dart';
import 'package:flutter_slicing/widget/app_icon_button.dart';
import 'package:flutter_slicing/widget/app_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const AppSearchBar(),
              const SizedBox(height: 16),
              Wrap(
                runSpacing: 8,
                spacing: 8,
                children: List.generate(
                  searchChip.length,
                  (x) => AppChip(
                    text: searchChip[x],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Image.asset(image7),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        image8,
                        scale: 1.8,
                      ),
                      const SizedBox(height: 8),
                      Image.asset(
                        image10,
                        scale: 1.8,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        image9,
                        scale: 1.8,
                      ),
                      const SizedBox(height: 8),
                      Image.asset(
                        image18,
                        scale: 4,
                      ),
                      const SizedBox(height: 8),
                      Image.asset(
                        image11,
                        scale: 1.8,
                      ),
                    ],
                  )
                ],
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
                isOn: [false, true, false, false, false][x],
              ),
            ),
        ],
      ),
    );
  }
}
