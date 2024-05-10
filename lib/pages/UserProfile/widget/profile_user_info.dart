import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';

import '../../../config/images.dart';

class LoginUserInfo extends StatelessWidget {
  final String profileImage;
  final String userName;
  final String userEmail;

   LoginUserInfo({super.key, required this.profileImage, required this.userName, required this.userEmail});
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
                    Container(
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                             borderRadius: BorderRadius.circular(100),
                            child: CachedNetworkImage(
                              imageUrl:  profileImage,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),


                        ))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userName,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userEmail,
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
