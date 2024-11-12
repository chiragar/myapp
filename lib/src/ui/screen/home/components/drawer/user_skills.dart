import 'package:flutter/material.dart';
import 'package:myapp/src/common/constant/app_assets.dart';
import 'package:myapp/src/common/constant/constants.dart';

class UserSkills extends StatelessWidget {
  const UserSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
  
        UserSkillsPercentage(percentage: 0.7, title: 'Flutter',image: AppAssets.flutterIcon),
        UserSkillsPercentage(percentage: 0.9, title: 'Dart',image: AppAssets.dartIcon),
        UserSkillsPercentage(percentage: 0.6, title: 'Firebase',image: AppAssets.firebaseIcon),
        UserSkillsPercentage(percentage: 0.85, title: 'Sqlite',image: AppAssets.dartIcon),
        UserSkillsPercentage(percentage: 0.8, title: 'Responsive Design',image: AppAssets.flutterIcon),
        UserSkillsPercentage(percentage: 0.9, title: 'Clean Architecture',image: AppAssets.flutterIcon),
        UserSkillsPercentage(percentage: 0.5, title: 'Bloc',image:AppAssets.blocIcon),
        UserSkillsPercentage(percentage: 0.93, title: 'Getx',image: AppAssets.dartIcon),
        ],
    );
  }
}

class UserSkillsPercentage extends StatelessWidget {
  const UserSkillsPercentage(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: AppConstants.defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}
