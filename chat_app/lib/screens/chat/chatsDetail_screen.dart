import 'package:chat_app/screens/chat/chat_screen.dart';
import 'package:chat_app/screens/users/users.dart';
import 'package:chat_app/utils/navigation/coustom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatConversation extends StatefulWidget {
  const ChatConversation({super.key});

  @override
  State<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Chatty",
                    style: GoogleFonts.iceland(
                        color: const Color.fromARGB(255, 51, 49, 49),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                  )
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              CustomedNavigation.nextScreen(
                                  context, const Chat());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                title: Text("Hello",
                                    style: GoogleFonts.iceland(
                                        color: const Color.fromARGB(
                                            255, 51, 49, 49),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                                subtitle: Text("Hello",
                                    style: GoogleFonts.iceland(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200)),
                                leading: CircleAvatar(
                                  radius: 16,
                                  backgroundImage: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                                ),
                                trailing: Text("12:00",
                                    style: GoogleFonts.iceland(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w200)),
                              ),
                            )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomedNavigation.nextScreen(context, const UsersScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
