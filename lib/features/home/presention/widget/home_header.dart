import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/Text_Styles.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:gap/gap.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.menu_rounded),
        const Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hallo, Ahmed',
              style: getTitelstyle(color: AppColor.blackcolor),
            ),
            const Gap(5),
            Text(
              'What are you reading today?',
              style: getsmallstyle(
                color: AppColor.greycolor,
              ),
            )
          ],
        ),
        const Spacer(),
        const Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              maxRadius: 28,
            ),
            CircleAvatar(
              maxRadius: 25,
              backgroundImage: AssetImage('assets/logo.PNG'),
            ),
          ],
        )
      ],
    );
  }
}