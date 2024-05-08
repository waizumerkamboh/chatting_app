
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/images.dart';

class ChatBubbleScreen extends StatelessWidget {
  final String message;
  final bool isComing;
  final String time;
  final String status;
  final String imageUrl;
  const ChatBubbleScreen({super.key, required this.message, required this.isComing, required this.time, required this.status, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: isComing? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width / 1.3
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: isComing
                ?  const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10)
                )
                :  const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(0)
                )

            ),
            child: imageUrl == ""
                ?Text(message)
                : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                ClipRRect(
                 borderRadius: BorderRadius.circular(10) ,
                    child: Image.network(imageUrl)),
                const SizedBox(height: 10,),
                Text(message)
              ],
            )
            ,
          ),
          const SizedBox(height: 10,),
          isComing ? Text(time,style: Theme.of(context).textTheme.labelMedium) : Row(
            mainAxisAlignment: isComing? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              Text(time,style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(width: 10,),
              SvgPicture.asset(ImageAssets.chatStatusSvg,width: 20,),
            ],
          )

        ],
      ),
    )
    ;
  }
}
