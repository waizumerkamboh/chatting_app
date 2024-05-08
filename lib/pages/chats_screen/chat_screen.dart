import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:we_chat/pages/chats_screen/widget/chat_bubble.dart';

import '../../config/images.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:  const EdgeInsets.only(left: 10),
          child: Image.asset(ImageAssets.boyPic),
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ghulam',style: Theme.of(context).textTheme.bodyLarge,),
            Text('Online',style: Theme.of(context).textTheme.labelSmall,),
          ],

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
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
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

            Container(
              width: 30,
                height: 30,
                child: SvgPicture.asset(ImageAssets.chatSendSvg,width: 25,)),

          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
         //crossAxisAlignment: CrossAxisAlignment.start,

          children: const [
            ChatBubbleScreen(
                message: "Hello How are you ?",
                isComing: true,
                time: "10:10 AM",
                status: "read",
                imageUrl: ""
            ),
            ChatBubbleScreen(
                message: "Hello How are you ?",
                isComing: false,
                time: "10:10 AM",
                status: "read",
                imageUrl: ""
            ),
            ChatBubbleScreen(
                message: "Hello How are you ?",
                isComing: false,
                time: "10:10 AM",
                status: "read",
                imageUrl: "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?t=st=1714743610~exp=1714747210~hmac=8975c7eb964bdfe2ccc66f10e37927b4d6849b8dcea9f25b01fea6a325e1b1e0&w=740"
            ),
            ChatBubbleScreen(
                message: "Hello How are you ?",
                isComing: true,
                time: "10:10 AM",
                status: "read",
                imageUrl: ""
            ),
            ChatBubbleScreen(
                message: "Hello How are you ?",
                isComing: true,
                time: "10:10 AM",
                status: "read",
                imageUrl: "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?t=st=1714743610~exp=1714747210~hmac=8975c7eb964bdfe2ccc66f10e37927b4d6849b8dcea9f25b01fea6a325e1b1e0&w=740"
            ),


          ],
        ),
      ),
    );
  }
}
