import 'package:flutter/material.dart';
import 'package:myapp/src/common/constant/app_colors.dart';
import 'package:myapp/src/common/constant/constants.dart';
import 'top_user_info_drawer.dart';
import 'user_info.dart';
import 'user_skills.dart';
import 'user_knowledge.dart';
import 'user_contact_info.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopUserInfoDrawer(),
            Container(
                color: AppColors.bgColor,
                child: const Padding(
                  padding: EdgeInsets.all(AppConstants.defaultPadding / 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UserInfo(),
                      UserSkills(),
                      UserKnowledge(),
                      Divider(),
                      SizedBox(height: AppConstants.defaultPadding),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
