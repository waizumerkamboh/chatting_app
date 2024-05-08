import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:we_chat/pages/UserProfile/widget/profile_user_info.dart';

import '../../controller/auth_controller/auth_controller.dart';

class UserProfilePage extends StatelessWidget {
  UserProfilePage({super.key});
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: (){
                Get.toNamed('/updateProfilePage');
              },
              icon: const Icon(Icons.edit)
          )
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
             LoginUserInfo(),
            const Spacer(),
            ElevatedButton(
                onPressed: (){
                  authController.logoutUser();
                },
                child: const Text("Logout")
            )
          ],
        ),
      ),
    );
  }
}
