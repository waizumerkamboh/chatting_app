import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/images.dart';
import '../../../config/string.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.boyPic),
            SvgPicture.asset(ImageAssets.plugSvg),
            Image.asset(ImageAssets.girlPic),
          ],
        ),
        const SizedBox(height: 30,),
        Text(
          WelcomePageString.nowYouAre,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          WelcomePageString.connected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 30,),
        Text(
          textAlign: TextAlign.center,
          WelcomePageString.discription,
          style: Theme.of(context).textTheme.labelLarge,
        )
      ],
    );
  }
}
