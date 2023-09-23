import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'Screens/LoginScreen.dart';
import 'dart:ui';
import 'package:colors_stuff/colors_stuff.dart';
import 'Screens/MyWhatapp.dart';
import 'Screens/ProfileScreen.dart';
import 'package:whatsapp/whatsapp.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_launch/flutter_launch.dart';


void main() {
  runApp(MyMaterial());
}

GoRouter router() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyScaffold(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const MyProfile(),
      ),
       GoRoute(
         path: '/whatsapp',
         builder: (context, state) => const MyWhatsapp(),
       ),
      // GoRoute(
      //   path: '/calm',
      //   builder: (context, state) => const CalmDownScreen(),
      // ),
      // GoRoute(
      //   path: '/contact',
      //   builder: (context, state) => const ContactMeScreen(),
      // ),
    ],
  );
}


class MyMaterial extends StatefulWidget {
  MyMaterial({super.key});

  @override
  State<MyMaterial> createState() => _MyMaterialState();
}

class _MyMaterialState extends State<MyMaterial> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: " My Profile Application ",
      debugShowCheckedModeBanner: false,
      routerConfig: router(),
    );
  }
}

