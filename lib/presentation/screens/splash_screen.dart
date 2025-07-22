import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_kareem/core/constants/app_colors.dart';
import 'package:quran_kareem/presentation/screens/main_navigation_screen.dart';
import '../../core/constants/app_text_stylrs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});

    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const MainNavigationScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradientli orqa fon
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.lightGradientStart,
              AppColors.lightGradientEnd,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/splash_animation.json',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 24),
            Text(
              "بِسْمِ ٱللّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
              textAlign: TextAlign.center,
              style: AppTextStyles.amiriTitle.copyWith(
                color: AppColors.primary,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
