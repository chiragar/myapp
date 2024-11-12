import 'package:flutter/material.dart';
import 'package:myapp/src/common/responsive/responsive.dart';
import 'package:myapp/src/ui/screen/intro/components/intro_body.dart';
import 'package:myapp/src/ui/widgets/side_menu_button.dart';
import 'components/SocialMediaList.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: size.width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))
            MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          SizedBox(
            width: size.width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const Socialmedia(),
          SizedBox(
            width: size.width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
