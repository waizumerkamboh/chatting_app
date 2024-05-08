import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/images.dart';
import 'chat_tile.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const SizedBox(height: 10,),
        InkWell(
          onTap: (){
            Get.toNamed('/chatScreen');

          },
          child: const ChatTile(
            imageUrl: ImageAssets.boyPic,
            name: 'Ghulam',
            lastChat: 'Bad me baat kartye ha',
            lastTime: '3:00 PM',
          ),
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Waiz',
          lastChat: 'Abhi baat kartye ha ',
          lastTime: '3:01 PM',
        ), const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Ghulam',
          lastChat: 'Bad me baat kartye ha',
          lastTime: '3:00 PM',
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Waiz',
          lastChat: 'Abhi baat kartye ha ',
          lastTime: '3:01 PM',
        ), const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Ghulam',
          lastChat: 'Bad me baat kartye ha',
          lastTime: '3:00 PM',
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Waiz',
          lastChat: 'Abhi baat kartye ha ',
          lastTime: '3:01 PM',
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Ghulam',
          lastChat: 'Bad me baat kartye ha',
          lastTime: '3:00 PM',
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Waiz',
          lastChat: 'Abhi baat kartye ha ',
          lastTime: '3:01 PM',
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Ghulam',
          lastChat: 'Bad me baat kartye ha',
          lastTime: '3:00 PM',
        ),
        const ChatTile(
          imageUrl: ImageAssets.boyPic,
          name: 'Waiz',
          lastChat: 'Abhi baat kartye ha ',
          lastTime: '3:01 PM',
        ),

      ],
    );
  }
}
