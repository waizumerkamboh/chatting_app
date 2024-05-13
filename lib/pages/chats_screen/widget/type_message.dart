import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/image_picker_controller/image_picker_controller.dart';

import '../../../Model/UserModel.dart';
import '../../../config/images.dart';
import '../../../controller/chat_controller/chat_controller.dart';

class TypeMessage extends StatelessWidget {
  final UserModel userModel;
  TypeMessage({super.key, required this.userModel});

  ChatController chatController = Get.put(ChatController());
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  TextEditingController messageController = TextEditingController();
  RxString message = "".obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          // Container(
          //     width: 30,
          //     height: 30,
          //     child: SvgPicture.asset(ImageAssets.chatMicSvg,width: 25,)),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              controller: messageController,
              onChanged: (value) {
                message.value = value;
              },
              decoration: const InputDecoration(
                  filled: false, hintText: 'Type message....'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Obx(() => chatController.selectedImagePath.value == ""
              ? InkWell(
                  onTap: () async {
                    chatController.selectedImagePath.value ==
                        await imagePickerController.pickImage();
                  },
                  child: Container(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        ImageAssets.chatGallerySvg,
                        width: 25,
                      )),
                )
              : const SizedBox()
          ),
          const SizedBox(
            width: 10,
          ),
          Obx(
            () => message.value != "" || chatController.selectedImagePath.value != ""
                ? InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                if (messageController.text.isNotEmpty) {
                  chatController.sendMessage(
                      userModel.id!, messageController.text, userModel);
                  messageController.clear();
                  message.value = "";
                }
              },
              child: Container(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    ImageAssets.chatSendSvg,
                    width: 25,
                  )),
            )

           : Container(
                    width: 30,
                    height: 30,
                    child: SvgPicture.asset(
                      ImageAssets.chatMicSvg,
                      width: 25,
                    ))

          ),
        ],
      ),
    );
  }
}
