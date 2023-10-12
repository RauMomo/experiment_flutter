import 'package:flutter/material.dart';
import 'package:flutter_slicing/extension/constant.dart';
import 'package:flutter_slicing/extension/on_context.dart';
import 'package:flutter_slicing/view/add_page.dart';
import 'package:flutter_slicing/view/favorite_page.dart';
import 'package:flutter_slicing/view/home_page.dart';
import 'package:flutter_slicing/view/search_page.dart';
import 'package:flutter_slicing/view/setting_page.dart';
import 'package:flutter_slicing/widget/app_icon_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    profilePicture,
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    children: [
                      const Text(
                        'YoonMinHo',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Column(
                            children: const [
                              Text(
                                'Followers',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 60),
                          Column(
                            children: [
                              Text(
                                'Following',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      context.to(child: const SettingPage());
                    },
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Edit Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Insight',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Image.asset(image16),
              const SizedBox(height: 32),
              Image.asset(image17),
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
                    context.to(child: const FavoritePage());
                  } else if (x == 4) {}
                },
                icon: [
                  iconHome,
                  iconSearch,
                  iconAdd,
                  iconFavorite,
                  iconProfile
                ][x],
                isOn: [false, false, false, false, true][x],
              ),
            ),
        ],
      ),
    );
  }
}
