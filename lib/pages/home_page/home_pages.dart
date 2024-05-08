import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:we_chat/controller/image_picker_controller/image_picker_controller.dart';
import 'package:we_chat/controller/profile_controller/profile_controller.dart';
import 'package:we_chat/pages/home_page/widget/chat_list.dart';
import 'package:we_chat/pages/profile_pages/profile_page.dart';

import '../../config/images.dart';
import '../../config/string.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(AppString.appName,style: Theme.of(context).textTheme.headlineSmall,),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              ImageAssets.appIconSvg
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){

                },
                icon: const Icon(Icons.search)
            ),
            IconButton(
                onPressed: (){
                 // Get.toNamed('/profilePage');
                  Get.to( ProfilePageScreen());
                },
                icon: const Icon(Icons.more_vert_outlined)
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
              labelStyle: Theme.of(context).textTheme.bodyLarge,
              tabs: const [
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),

          ]),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
          child: const Icon(Icons.message_outlined),
          
            ),
        body:  const TabBarView(
            children: [
              ChatList(),
              Text('Groups'),
              Text('Calls'),
            ]),
      ),
    );
  }
}
