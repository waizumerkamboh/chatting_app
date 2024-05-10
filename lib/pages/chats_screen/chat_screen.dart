import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:we_chat/Model/UserModel.dart';
import 'package:we_chat/controller/chat_controller/chat_controller.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';
import 'package:we_chat/pages/UserProfile/profile_page.dart';
import 'package:we_chat/pages/chats_screen/widget/chat_bubble.dart';

import '../../config/images.dart';

class ChatScreen extends StatelessWidget {
  final UserModel userModel;
   ChatScreen({super.key, required this.userModel});
  ChatController chatController = Get.put(ChatController());
  ProfileController profileController = Get.put(ProfileController());
  TextEditingController messageController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.to(UserProfilePage(
              userModel: userModel,
            ));


          },
          child: Padding(
            padding:  const EdgeInsets.only(left: 10),
            child: Image.asset(ImageAssets.boyPic),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.call)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.video_call)
          ),
        ],
        title: InkWell(
          onTap: (){
            Get.to(UserProfilePage(
              userModel: userModel,
            ));
          },
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userModel.name ?? "User",
                    style: Theme.of(context).textTheme.bodyLarge,),
                  Text('Online',style: Theme.of(context).textTheme.labelSmall,),
                ],

              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(100)


        ),
        child: Row(
          children: [
            Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(ImageAssets.chatMicSvg,width: 25,)),
            const SizedBox(width: 10,),
             Expanded(
              child: TextField(
                controller: messageController,
                decoration: const InputDecoration(
                  filled: false,
                  hintText: 'Type message....'
                ),
              ),
            ),
            const SizedBox(width: 10,),

            Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(ImageAssets.chatGallerySvg,width: 25,)),
            const SizedBox(width: 10,),

            InkWell(
              onTap: (){
                if(messageController.text.isNotEmpty){
                  chatController.sendMessage(userModel.id!, messageController.text,userModel);
                  messageController.clear();
                }
              },
              child: Container(
                width: 30,
                  height: 30,
                  child: SvgPicture.asset(ImageAssets.chatSendSvg,width: 25,)),
            ),

          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(bottom: 70, top: 10, left: 10, right: 10),
        child: StreamBuilder(
            stream: chatController.getMessages(userModel.id!),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if(snapshot.hasError){
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              }
              if(snapshot.data == null){
                return const Center(
                  child: Text('No Messages'),
                );
              }
              else{
                return ListView.builder(
                  reverse: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index){
                    DateTime timestamp = DateTime.parse(snapshot.data![index].timestamp!);
                    String formattedTime = DateFormat('hh:mm a').format(timestamp);
                    return ChatBubbleScreen(
                        message: snapshot.data![index].message!,
                        isComing: snapshot.data![index].receiverId == profileController.currentUser.value.id,
                        time: formattedTime,
                        status: "read",
                        imageUrl: snapshot.data![index].imageUrl ?? "",
                    );
                    }
                );
              }

            }
        )
      ),
    );
  }
}

