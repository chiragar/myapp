import 'package:flutter/material.dart';
import 'package:myapp/src/common/constant/constants.dart';
import 'user_info_text.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: AppConstants.defaultPadding / 2,
        ),
        UserInfoText(text: 'Contact', title: '+91-8530265426'),
        UserInfoText(title: 'Email', text: 'rathodchiraga@gmail.com'),
        UserInfoText(title: 'LinkedIn', text: '@chirag-rathod-flutter'),
        UserInfoText(title: 'Github', text: '@chiragar'),
      ],
    );
  }
} // TODO Implement this library.
