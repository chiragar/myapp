import 'package:flutter/material.dart';
import 'package:myapp/src/common/constant/app_assets.dart';
import 'package:myapp/src/common/constant/constants.dart';
import 'package:myapp/src/ui/screen/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class Socialmedia extends StatelessWidget {
  const Socialmedia({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Column(
              children: [
                const Spacer(),
                RotatedBox(
                  quarterTurns: -3,
                  child: Text(
                    'Follow Me',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  height: size.height * 0.06,
                  width: 3,
                  margin: const EdgeInsets.symmetric(
                      vertical: AppConstants.defaultPadding * 0.5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppConstants.defaultPadding)),
                ),
                socialmedailist(),
                const Spacer(),
              ],
            ),
          );
        });
  }

  Column socialmedailist() => Column(
        children: [
          SocialMediaIcon(
              icon: AppAssets.linkedinSVG,
              onTap: () => launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/chirag-rathod-flutter/'))),
          SocialMediaIcon(
            icon: AppAssets.githubSVG,
            onTap: () => launchUrl(Uri.parse('https://github.com/chiragar')),
          ),
          const SocialMediaIcon(
            icon: 'assets/icons/dribble.svg',
          ),
        ],
      );
}
