import 'package:chat_app/screens/chat/chat_screen.dart';
import 'package:chat_app/utils/navigation/coustom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
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
                  const BackButton(),
                  Text('Contacts',
                      style: GoogleFonts.poppins(
                          color: Colors.blueGrey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
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
                                  title: Text("Siril",
                                      style: GoogleFonts.iceland(
                                          color: const Color.fromARGB(
                                              255, 51, 49, 49),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  subtitle: Text("online",
                                      style: GoogleFonts.iceland(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w200)),
                                  leading: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                                  ),
                                ),
                              )));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
