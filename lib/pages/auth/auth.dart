import 'package:flutter/material.dart';
import 'package:we_chat/pages/auth/widget/auth_body.dart';

import '../welcome_screen/widget/welcome_heading.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                WelcomeHeading(),
                SizedBox(height: 40,),
                AuthBody(),
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
