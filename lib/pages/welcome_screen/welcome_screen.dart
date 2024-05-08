import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:we_chat/pages/welcome_screen/widget/welcome_body.dart';
import 'package:we_chat/pages/welcome_screen/widget/welcome_footer_button.dart';
import 'package:we_chat/pages/welcome_screen/widget/welcome_heading.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WelcomeHeading(),
              WelcomeBody(),
              WelcomeFooterButton()






            ],
          ),
        ),
      ),
    );
  }
}
