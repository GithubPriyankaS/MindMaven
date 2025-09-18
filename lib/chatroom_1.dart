import 'package:flutter/material.dart';

class ChatroomPage extends StatelessWidget {
  const ChatroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Chatroom",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF0BA200),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Avatar Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  buildAddButton(),
                  const SizedBox(width: 15),
                  buildAvatar("A", true),
                  const SizedBox(width: 15),
                  buildAvatar("B", true),
                  const SizedBox(width: 15),
                  buildAvatar("C", false),
                  const SizedBox(width: 15),
                  buildAvatar("D", true),
                  const SizedBox(width: 15),
                  buildAvatar("E", true),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Chat messages container
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    buildChatBubble("A", "Congrats, But still more you have too"),
                    buildChatBubble("B",
                        "Great Work!!! Keep doing my child, Never miss the consistency"),
                    buildChatBubble("C", "Hello da, I got my marks"),
                    buildChatBubble("D",
                        "Happy for you da Macha!! Super happy for your Badges"),
                    buildChatBubble(
                        "E", "Hello Mam, How are you ? when is next week position ...."),
                    buildChatBubble("F", "Keep Rocking!! Cheers to Next Level"),
                    buildChatBubble("G", "Answer script da , Send me fast"),
                    buildChatBubble("H", "View all your updates and get in touch"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Avatar with initial + status dot
  Widget buildAvatar(String initial, bool isOnline) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.purple,
          child: Text(
            initial,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: isOnline ? Colors.green : Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }

  // Add (+) button
  Widget buildAddButton() {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFD9D9D9),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          "+",
          style: TextStyle(
            fontFamily: "Ariom",
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // Chat bubble
  Widget buildChatBubble(String initial, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 21,
            backgroundColor: Colors.purple,
            child: Text(
              initial,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF8AF28E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: "Helvetica Neue",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
