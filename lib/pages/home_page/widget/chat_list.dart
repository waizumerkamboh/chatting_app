import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/contact_controller/contact_controller.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';
import 'package:we_chat/pages/chats_screen/chat_screen.dart';

import '../../../config/images.dart';
import 'chat_tile.dart';

class ChatList extends StatelessWidget {
   ChatList({super.key});

  ContactController contactController = Get.put(ContactController());
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Expanded(
              child: Obx(() => ListView(
              
              children: contactController.chatRoomList.map((e) => InkWell(
                onTap: (){
                  Get.to(ChatScreen(
                      userModel: (e.receiver!.id ==
                          profileController.currentUser.value.id
                          ?e.sender
                          :e.receiver
                      )!
                  ));
              
                },
                child:  ChatTile(
                  imageUrl: (e.receiver!.id ==
                      profileController.currentUser.value.id
                      ?e.sender!.profileImage
                      :e.receiver!.profileImage
                  ) ?? ImageAssets.defaultProfileUrl,
                  name: (e.receiver!.id ==
                      profileController.currentUser.value.id
                      ?e.sender!.name
                      :e.receiver!.name
                  )?? "Users",
                  lastChat: e.lastMessage?? "Last Message",
                  lastTime: e.lastMessageTimeStamp?? "Last Time",
                ),
              ),).toList()
                  )),
            ),
          ],
        ),
        onRefresh: (){
          return contactController.getChatRoomList();
        }
    );
  }
}
