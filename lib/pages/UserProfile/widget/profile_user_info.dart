import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';

import '../../../config/images.dart';

class LoginUserInfo extends StatelessWidget {
   LoginUserInfo({super.key});
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageAssets.boyPic)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(profileController.currentUser.value.name!,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(profileController.currentUser.value.email!,
                      style: Theme.of(context).textTheme.labelLarge,
                    )                          ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.background
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageAssets.profileAudioCallSvg,width: 25,),
                          const SizedBox(width: 5,),

                          const Text('Call',
                            style: TextStyle(
                                color: Color(0xff039c00)

                            ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,

                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.background
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(ImageAssets.profileVideoCallSvg,width: 25,
                              color: const Color(0xffFF9900)
                          ),
                          const SizedBox(width: 5,),
                          const Text('Video',
                            style: TextStyle(
                                color: Color(0xffFF9900)

                            ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,

                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.background
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageAssets.appIconSvg,width: 25,
                              color: const Color(0xff0057FF)


                          ),
                          const SizedBox(width: 5,),

                          const Text('Chat',
                            style: TextStyle(
                                color: Color(0xff0057FF)

                            ),),
                        ],
                      ),
                    ),

                  ],
                )


              ],
            ),
          )
        ],
      ),
    )
      ;
  }
}
