import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/src/common/constant/app_assets.dart';
import 'package:myapp/src/common/constant/constants.dart';

class UserKnowledge extends StatelessWidget {
  const UserKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        knowledgeText(knowledge: 'Flutter, Dart'),
        knowledgeText(knowledge: 'Android, Java'),
        knowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }

  knowledgeText({required String knowledge}) => Padding(
        padding: const EdgeInsets.only(bottom: AppConstants.defaultPadding / 2),
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.checkSVG),
            const SizedBox(
              width: AppConstants.defaultPadding / 2,
            ),
            Text(knowledge),
          ],
        ),
      );
}
