import 'package:flutter/material.dart';
import 'package:quran_kareem/presentation/screens/asma_ul_husna_screen.dart';
import 'package:quran_kareem/presentation/screens/prayer_times_screen.dart';
import 'package:quran_kareem/presentation/screens/qibla_screen.dart';
import 'package:quran_kareem/presentation/screens/settings_screen.dart';
import 'package:quran_kareem/presentation/screens/surahs_list_screen.dart';
import 'package:quran_kareem/core/constants/app_colors.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    SurahsListScreen(key: PageStorageKey('SurahsPage')),
    AsmaulHusnaScreen(key: PageStorageKey('AsmaPage')),
    PrayerTimesScreen(key: PageStorageKey('PrayerPage')),
    QiblaScreen(key: PageStorageKey('QiblaPage')),
  ];

  final PageStorageBucket _bucket = PageStorageBucket();

  final List<String> _widgetTitles = const <String>[
    'Qur\'on Karim',
    'Asma ul-Husna',
    'Namoz Vaqtlari',
    'Qibla',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgetTitles.elementAt(_selectedIndex)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              icon: const Icon(Icons.settings_outlined)),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light
                ? [AppColors.lightGradientStart, AppColors.lightGradientEnd]
                : [AppColors.darkGradientStart, AppColors.darkGradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: PageStorage(
          bucket: _bucket,
          child: _pages[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              activeIcon: Icon(Icons.menu_book_rounded),
              label: 'Suralar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              activeIcon: Icon(Icons.favorite_rounded),
              label: '99 Ism'),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              activeIcon: Icon(Icons.watch_later),
              label: 'Vaqtlar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(Icons.explore),
              label: 'Qibla'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
