



import 'package:get/get.dart';
import 'package:we_chat/pages/UserProfile/profile_page.dart';
import 'package:we_chat/pages/UserProfile/update_profile_page.dart';

import '../pages/auth/auth.dart';
import '../pages/chats_screen/chat_screen.dart';
import '../pages/contact_pages/contact_page.dart';
import '../pages/home_page/home_pages.dart';


var pagePath = [
  GetPage(
      name: "/authPage",
      page: () => const AuthScreen(),
      transition: Transition.rightToLeft
  ),
  GetPage(
      name: "/homePage",
      page: () =>  HomePage(),
      transition: Transition.rightToLeft
  ),
  // GetPage(
  //     name: "/chatScreen",
  //     page: () =>  ChatScreen(userModel: 'null',),
  //     transition: Transition.rightToLeft
  // ),
  GetPage(
      name: "/contactPage",
      page: () =>  ContactPage(),
      transition: Transition.rightToLeft
  ),
  // GetPage(
  //     name: "/profilePage",
  //     page: () =>  UserProfilePage(),
  //     transition: Transition.rightToLeft
  // ),
  // GetPage(
  //     name: "/updateProfilePage",
  //     page: () => const UserUpdateProfileScreen(),
  //     transition: Transition.rightToLeft
  // ),
 
];