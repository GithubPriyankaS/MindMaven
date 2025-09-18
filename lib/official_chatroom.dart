import 'package:flutter/material.dart';

class OfficialChatroomPage extends StatelessWidget {
  const OfficialChatroomPage({super.key});

  final List<Map<String, String>> messages = const [
    {"sender": "Teacher", "text": "Welcome to the official chatroom!"},
    {"sender": "Student", "text": "Hello Mam 👋"},
    {"sender": "Teacher", "text": "Don't forget to complete your lessons!"},
    {"sender": "Student", "text": "Sure Mam, I will submit on time."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Official Chatroom", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final msg = messages[index];
          final isTeacher = msg["sender"] == "Teacher";
          return Align(
            alignment: isTeacher ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: isTeacher ? Colors.green : Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                msg["text"]!,
                style: TextStyle(
                  color: isTeacher ? Colors.white : Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
