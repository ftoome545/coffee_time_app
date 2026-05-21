import 'package:coffee_time/core/utils/app_images.dart';
import 'package:coffee_time/features/home/presentation/view/cart_view.dart';
import 'package:coffee_time/features/home/presentation/view/favorite_view.dart';
import 'package:coffee_time/features/home/presentation/view/home_view.dart';
import 'package:coffee_time/features/home/presentation/view/notify_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _selectedIndex = 0;
  List<Widget> screenList = [
    HomeView(),
    FavoriteView(),
    CartView(),
    NotifyView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screenList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: _selectedIndex == 0
                  ? SvgPicture.asset(Assets.imagesHomeActiveIcon)
                  : SvgPicture.asset(Assets.imagesHomeInactiveIcon),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: _selectedIndex == 1
                  ? SvgPicture.asset(Assets.imagesFavoriteActiveIcon)
                  : SvgPicture.asset(Assets.imagesFavoriteInactiveIcon),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: _selectedIndex == 2
                  ? SvgPicture.asset(Assets.imagesCartActiveIcon)
                  : SvgPicture.asset(Assets.imagesCartInactiveIcon),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: _selectedIndex == 3
                  ? SvgPicture.asset(Assets.imagesNotifyActiveIcon)
                  : SvgPicture.asset(Assets.imagesNotifyInactiveIcon),
              label: ''),
        ],
        // selectedItemColor: Color(0xffC67C4E),
        // unselectedItemColor: Color(0xffA2A2A2),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
