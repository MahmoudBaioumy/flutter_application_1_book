import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/features/books/books_view.dart';
import 'package:flutter_application_1/features/cart/cart_view.dart';
import 'package:flutter_application_1/features/favorite/favorite.dart';
import 'package:flutter_application_1/features/home/presention/view/home_view.dart';
import 'package:flutter_application_1/features/profile/view/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

int _index = 0;
List<Widget> Screens = [
  const home_view(),
  const Books_view(),
  const fav_view(),
  const cart_view(),
  const profile_view()
];

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg'),
              activeIcon: SvgPicture.asset(
                'assets/home.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.bluecolor, BlendMode.srcIn),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/book.svg'),
              activeIcon: SvgPicture.asset(
                'assets/book.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.bluecolor, BlendMode.srcIn),
              ),
              label: 'Books'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/heart.svg'),
              activeIcon: SvgPicture.asset(
                'assets/heart.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.bluecolor, BlendMode.srcIn),
              ),
              label: 'favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/shop.svg'),
              activeIcon: SvgPicture.asset(
                'assets/shop.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.bluecolor, BlendMode.srcIn),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Profile.svg'),
              activeIcon: SvgPicture.asset(
                'assets/Profile.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.bluecolor, BlendMode.srcIn),
              ),
              label: 'Profile')
        ],
      ),
    );
  }
}
