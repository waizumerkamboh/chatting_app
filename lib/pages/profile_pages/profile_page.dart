import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/auth_controller/auth_controller.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';
import 'package:we_chat/widget/primary_button.dart';

import '../../controller/image_picker_controller/image_picker_controller.dart';

class ProfilePageScreen extends StatelessWidget {
   ProfilePageScreen({super.key});
  ProfileController profileController = Get.put(ProfileController());
   ImagePickerController imagePickerController = Get.put(ImagePickerController());
   AuthController authController = Get.put(AuthController());


   @override
  Widget build(BuildContext context) {
    RxBool isEdit = true.obs;
    TextEditingController name = TextEditingController(text: profileController.currentUser.value.name);
    TextEditingController email = TextEditingController(text: profileController.currentUser.value.email);
    TextEditingController phone = TextEditingController(text: profileController.currentUser.value.phoneNumber);
    TextEditingController about = TextEditingController(text: profileController.currentUser.value.about);
    RxString imagePath = "".obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: (){
                authController.logoutUser();

              },
              icon: const Icon(Icons.logout)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() =>
                                isEdit.value? InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  onTap: () async{
                                    imagePath.value = await imagePickerController.pickImage();
                                    print("Image Picked ${imagePath.value}");

                                  },
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                     color:  Theme.of(context).colorScheme.background,
                                      borderRadius: BorderRadius.circular(100)
                                    ), 
                                    child: imagePath.value == ""
                                       ? const Icon(Icons.add)
                                        : ClipRRect(
                                           borderRadius: BorderRadius.circular(100),
                                        child: Image.file(File(imagePath.value),
                                          fit: BoxFit.cover,
                                        )),

                                  )
                                ):Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color:  Theme.of(context).colorScheme.background,
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: profileController.currentUser.value.profileImage == "" ||
                                         profileController.currentUser.value.profileImage == null
                                      ? const Icon(Icons.image)
                                      : ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: CachedNetworkImage(
                                          imageUrl:  profileController.currentUser.value.profileImage!,
                                          fit: BoxFit.cover,
                                        placeholder: (context, url) => const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) => const Icon(Icons.error),
                                      )

                                  ),


                                )
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Obx(() =>
                        TextField(
                          controller: name,
                          enabled: isEdit.value,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Name",
                            prefixIcon: const Icon(Icons.person)
                          ),

                        ),),

                        const SizedBox(height: 10,),


                        TextField(
                          controller: email,
                          enabled: false,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Email",
                            prefixIcon: const Icon(Icons.alternate_email_rounded)
                          ),

                        ),
                        const SizedBox(height: 10,),

                        Obx(() =>
                        TextField(
                          controller: phone,
                          enabled: isEdit.value,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Number",
                            prefixIcon: const Icon(Icons.phone)
                          ),

                        ),),
                        const SizedBox(height: 10,),

                        Obx(() =>
                            TextField(
                              controller: about,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                  filled: isEdit.value,
                                  labelText: "About",
                                  prefixIcon: const Icon(Icons.info)
                              ),

                            ),),
                        const SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Obx(() =>  isEdit.value? PrimaryButton(
                               name: "Save",
                               icon: Icons.save,
                               onTap: () async{
                                 await profileController.updateProfile(imagePath.value, name.text, about.text, phone.text);

                                 isEdit.value = false;
                               }
                           ): PrimaryButton(
                               name: "Edit",
                               icon: Icons.edit,
                               onTap: (){
                                 isEdit.value = true;

                               }
                           ),)
                          ],
                        ),
                        const SizedBox(height: 20,),




                      ],
                    ),
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
