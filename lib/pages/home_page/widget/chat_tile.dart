import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../config/images.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastChat;
  final String lastTime;
  const ChatTile({super.key, required this.imageUrl, required this.name, required this.lastChat, required this.lastTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CachedNetworkImage(
            width: 50,
            height: 50,
            imageUrl:  imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        ),
        title: Text(name,
          style: Theme.of(context).textTheme.bodyLarge,),
        subtitle: Text(
          lastChat,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium,),
        trailing:  Text(lastTime,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),

    )
    ;
  }
}
