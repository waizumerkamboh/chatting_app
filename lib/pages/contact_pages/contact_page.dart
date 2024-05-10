import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/chat_controller/chat_controller.dart';
import 'package:we_chat/controller/contact_controller/contact_controller.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';
import 'package:we_chat/pages/chats_screen/chat_screen.dart';
import 'package:we_chat/pages/contact_pages/widget/contact_search.dart';
import 'package:we_chat/pages/contact_pages/widget/new_contact_tile.dart';

import '../../config/images.dart';
import '../home_page/widget/chat_tile.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});
  ContactController contactController = Get.put(ContactController());
  ChatController chatController = Get.put(ChatController());
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    RxBool isSearchEnable = false.obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select contact"),
        actions: [
          Obx(() => IconButton(
              onPressed: () {
                isSearchEnable.value = !isSearchEnable.value;
              },
              icon: isSearchEnable.value
                  ? const Icon(Icons.close)
                  : const Icon(Icons.search)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Obx(() => isSearchEnable.value
                ? const ContactSearch()
                : const SizedBox()),
            const SizedBox(
              height: 10,
            ),
            NewContactTile(
              title: 'New Contact',
              icon: Icons.person_add,
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            NewContactTile(
              title: 'New Group',
              icon: Icons.group_add,
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text('Contacts on Sampark'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Column(
                children: contactController.userList
                    .map((e) => InkWell(
                          onTap: () {
                            Get.to(ChatScreen(userModel: e));
                           
                          },
                          child: ChatTile(
                            imageUrl: e.profileImage ?? ImageAssets.defaultProfileUrl,
                            name: e.name ?? "users",
                            lastChat: e.about ?? "Hey there",
                            lastTime: e.email == profileController.currentUser.value.email
                                      ? "You"
                                      : "",
                          ),
                        ))
                    .toList()))
          ],
        ),
      ),
    );
  }
}

