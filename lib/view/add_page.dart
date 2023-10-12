import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/constant.dart';
import 'package:flutter_slicing/extension/on_context.dart';
import 'package:flutter_slicing/view/favorite_page.dart';
import 'package:flutter_slicing/view/home_page.dart';
import 'package:flutter_slicing/view/profile_page.dart';
import 'package:flutter_slicing/view/search_page.dart';
import 'package:flutter_slicing/widget/app_icon_button.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        context.close();
                      },
                      child: Image.asset(iconClose)),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF14C059),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Post',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "What's on Your Mind?",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Image.asset(iconPhoto),
                  const SizedBox(width: 12),
                  const Text(
                    'Photo / Video',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              Row(
                children: [
                  Image.asset(iconCamera),
                  const SizedBox(width: 12),
                  const Text(
                    'Camera',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              Row(
                children: [
                  Image.asset(iconFont),
                  const SizedBox(width: 12),
                  const Text(
                    'Create',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Divider(thickness: 1),
              Row(
                children: [
                  Image.asset(iconTime),
                  const SizedBox(width: 12),
                  const Text(
                    "24's",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
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
                    context.to(child: const SearchPage());
                  } else if (x == 2) {
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
                isOn: [false, false, true, false, false][x],
              ),
            ),
        ],
      ),
    );
  }
}
