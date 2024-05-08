import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../config/images.dart';
import '../../controller/spalsh_controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
   SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
   SplashController splashController = Get.put(SplashController());
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashController.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: SvgPicture.asset(
          ImageAssets.appIconSvg
        ),
      )
    );
  }
}
