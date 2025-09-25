import 'package:anime_store/core/theme/colors.dart';
import 'package:anime_store/features/language/presentation/view/language_screen.dart';
import 'package:anime_store/features/search/presentation/view/search_screen.dart';
import 'package:anime_store/features/settings/presentation/view/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../home/presentation/view/home_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    LanguageScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GNav(
            tabMargin: EdgeInsets.all(2),
            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 900),
            color: MyColors.bottomNavigationBarIconsColor,
            activeColor: Colors.white,
            iconSize: 30,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
            tabBackgroundColor: MyColors.appColor,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            tabs: const [
              GButton(icon: Icons.home_filled, text: 'Home'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.language, text: 'Language'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
