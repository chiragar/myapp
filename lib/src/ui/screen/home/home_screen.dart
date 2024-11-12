import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:myapp/src/common/constant/constants.dart';
import 'package:myapp/src/common/responsive/responsive.dart';
import 'package:myapp/src/controller/controller.dart';
import 'package:myapp/src/ui/screen/home/components/drawer/drawer.dart';
import 'package:myapp/src/ui/screen/home/components/navigation_button_list.dart';
import 'package:myapp/src/ui/screen/home/components/top_navigation_bar.dart';
import '../intro/introduction_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> pages = [
    const IntroductionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: AppConstants.defaultPadding * 2,
                  )
                : const SizedBox(
                    height: AppConstants.defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            )
          ],
        ),
      ),
    );
  }
}
