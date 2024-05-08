

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{


  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if(user != null){
      Timer(const Duration(seconds: 3),
              () =>       Get.offAllNamed('/homePage')
      );


    }else{
      Timer(const Duration(seconds: 3),
              () =>       Get.offAllNamed('/authPage')
      );

    }


  }
}