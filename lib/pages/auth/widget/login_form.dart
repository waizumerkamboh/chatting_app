import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/auth_controller.dart';
import '../../../widget/primary_button.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),

         TextField(
           controller: email,
          decoration: const InputDecoration(
            hintText: 'Email',
            prefixIcon: Icon(Icons.alternate_email_rounded)
          ),
        ),
        const SizedBox(height: 30,),
         TextField(
           controller: password,
          decoration: const InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.password_outlined)
          ),
        ),
        const SizedBox(height: 60,),
       Obx(() =>  authController.isLoading.value?
       const CircularProgressIndicator():
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           PrimaryButton(name: 'LOGIN', icon: Icons.lock_open_outlined, onTap: () {
             authController.login(email.text, password.text);

           },),
         ],
       )
       )
      ],
    );
  }
}
