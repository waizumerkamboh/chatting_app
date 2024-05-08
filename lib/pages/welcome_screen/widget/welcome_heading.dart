import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/images.dart';
import '../../../config/string.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageAssets.appIconSvg,
                color: Theme.of(context).colorScheme.onBackground,

              ),
            ],
          ),
          const SizedBox(height: 30,),
          Text(
            AppString.appName,
            style: Theme.of(context).textTheme.headlineLarge,
          )
        ],
      );

  }
}
