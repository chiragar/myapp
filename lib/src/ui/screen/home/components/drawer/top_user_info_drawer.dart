import 'package:flutter/material.dart';
import 'package:myapp/src/common/constant/app_colors.dart';
import 'package:myapp/src/common/constant/constants.dart';
import 'user_picture.dart';

class TopUserInfoDrawer extends StatelessWidget {
  const TopUserInfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: ColoredBox(
        color: AppColors.bgColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const UserPictures(),
            const Spacer(),
            Text(
              'Chirag Rathod',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: AppConstants.defaultPadding / 4,
            ),
            const Text(
              'Flutter &Android Application Developer',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
