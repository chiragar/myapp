import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/src/common/constant/app_colors.dart';
import 'package:myapp/src/common/constant/constants.dart';
import 'package:myapp/src/ui/screen/home/home_screen.dart';
import 'package:myapp/src/ui/widgets/animated_loading_text.dart';
import 'package:myapp/src/ui/widgets/animated_texts_componenets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 100,
              height: 100,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
