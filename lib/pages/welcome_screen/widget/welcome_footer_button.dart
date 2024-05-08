import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../config/images.dart';
import '../../../config/string.dart';

class WelcomeFooterButton extends StatelessWidget {
  const WelcomeFooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideAction(
          onSubmit: (){
            Get.offAllNamed('/authPage');
          },
          sliderButtonIcon: SizedBox(
            width: 25,
            height: 25,
            child: SvgPicture.asset(
              ImageAssets.plugSvg,
              width: 25,
            ),
          ),
          text: WelcomePageString.slideToStart,
          textStyle: Theme.of(context).textTheme.labelLarge,

          submittedIcon: SvgPicture.asset(
            ImageAssets.connectSvg,
            width: 25,
          ),
          innerColor: Theme.of(context).colorScheme.primary,
          outerColor: Theme.of(context).colorScheme.primaryContainer,

        )

      ],
    );
  }
}
