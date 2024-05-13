

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusController extends GetxController with WidgetsBindingObserver{
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
    await db.collection("users").doc(auth.currentUser!.uid).update({
      "status" : "Online",
    });
  }
  void didChangeAppLifecycleState(AppLifecycleState state) async{
    if(state == AppLifecycleState.inactive){
      print("Offline");
      await db.collection("users").doc(auth.currentUser!.uid).update({
        "status" : "Offline",
      });

    }else if(state == AppLifecycleState.resumed){
      print("Online");
      await db.collection("users").doc(auth.currentUser!.uid).update({
        "status" : "Online",
      });

    }
  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    WidgetsBinding.instance.removeObserver(this);
  }
}