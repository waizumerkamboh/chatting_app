
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../Model/UserModel.dart';

class AuthController extends GetxController{

  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  RxBool isLoading = false.obs;


  // FOR LOGIN

  Future<void> login(String email, String password) async{
    isLoading.value = true;
    try{
        await auth.signInWithEmailAndPassword(
            email: email,
            password: password
        );
      Get.offAllNamed('/homePage');

    }on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }

  }catch(e){
      print(e);
    }
    isLoading.value = false;
}

 // FOR CREATE USER

  Future<void> createUser(String email, String password, String name) async{
    isLoading.value = true;

    try{
      await auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      initUser(email, name);
      print('Account created');
      Get.offAllNamed('/homePage');


    }on FirebaseAuthException catch(e){
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;

  }


  // FOR LOGOUT

  Future<void> logoutUser() async{
    await auth.signOut();
    Get.offAllNamed("/authPage");

  }

  Future<void>  initUser(String email, String name) async{
    var newUser = UserModel(
      email: email,
      name: name,
      id: auth.currentUser!.uid

    );
    try{
      await db.collection("users").doc(auth.currentUser!.uid).set(newUser.toJson());

    }catch(ex){
      print(ex);

    }

  }















}