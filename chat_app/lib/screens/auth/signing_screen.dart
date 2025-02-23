import 'package:chat_app/screens/chat/chatsDetail_screen.dart';
import 'package:chat_app/utils/navigation/coustom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class Signingscreen extends StatefulWidget {
  const Signingscreen({super.key});

  @override
  State<Signingscreen> createState() => _SigningscreenState();
}

class _SigningscreenState extends State<Signingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(
            Buttons.Google,
            text: "Sign up with Google",
            onPressed: () {
              CustomedNavigation.nextScreen(context, const ChatConversation());
            },
          )
        ],
      ),
    ));
  }
}
