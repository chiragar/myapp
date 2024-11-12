import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/src/common/constant/app_assets.dart';
import 'package:myapp/src/common/constant/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class UserContactInfo extends StatelessWidget {
  const UserContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppConstants.defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/chirag-rathod-flutter'));
              },
              icon: SvgPicture.asset(AppAssets.linkedinSVG)),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/chiragar'));
              },
              icon: SvgPicture.asset(AppAssets.githubSVG)),
          const Spacer(),
        ],
      ),
    );
  }
}
