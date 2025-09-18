import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'chatroom_1.dart';
import 'weekend_quiz.dart';
import 'analytics_space.dart';
import 'lessons.dart'; // ✅ Import Lessons Page

/// 🔹 Reusable Video Card Widget
class VideoCard extends StatefulWidget {
  final String title;
  final String videoPath;
  final String progress; // e.g. "0/10"

  const VideoCard({
    super.key,
    required this.title,
    required this.videoPath,
    required this.progress,
  });

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {}); // refresh when video is ready
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 324,
      decoration: BoxDecoration(
        color: const Color(0xFF0BA200),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🎥 Video
          if (_controller.value.isInitialized)
            GestureDetector(
              onTap: _togglePlayPause,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                  if (!_isPlaying)
                    const Icon(Icons.play_circle,
                        size: 60, color: Colors.white),
                ],
              ),
            )
          else
            const SizedBox(
              height: 200,
              child: Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
            ),

          const SizedBox(height: 12),

          // 📌 Title & Progress
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontFamily: "Ariom",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.progress,
                  style: const TextStyle(
                    fontFamily: "Ariom",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// 🔹 Main EduHub Page
class Frame10Page extends StatelessWidget {
  const Frame10Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Title
          const Positioned(
            left: 26,
            top: 86,
            child: SizedBox(
              width: 212,
              height: 50,
              child: Text(
                "EduHub",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  height: 22 / 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Menu (top-right)
          Positioned(
            right: 20,
            top: 40,
            child: PopupMenuButton<String>(
              color: Colors.black,
              icon: const Icon(Icons.menu, color: Colors.white, size: 30),
              onSelected: (value) {
                if (value == "chatroom") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatroomPage()),
                  );
                } else if (value == "quiz") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WeekendQuizPage()),
                  );
                } else if (value == "analytics") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnalyticsPage()),
                  );
                } else if (value == "lessons") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LessonsPage()),
                  );
                }
              },
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: "chatroom",
                  child: Text("💬 Chatroom",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                const PopupMenuItem(
                  value: "quiz",
                  child: Text("📝 Weekend Quiz",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                const PopupMenuItem(
                  value: "analytics",
                  child: Text("📊 Analytics Space",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                const PopupMenuItem(
                  value: "lessons",
                  child: Text("🌲 Lessons (Forests)",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),

          // 🌍 Climate Change Card
          const Positioned(
            left: 42,
            top: 150,
            child: VideoCard(
              title: "Climate change",
              videoPath: "assets/images/Climate change (according to a kid).mp4",
              progress: "0/10",
            ),
          ),

          // ♻️ Waste Management Card
          const Positioned(
            left: 42,
            top: 500,
            child: VideoCard(
              title: "Waste Management",
              videoPath:
              "assets/images/Waste_Management_and_Recycling_Video.mp4",
              progress: "0/10",
            ),
          ),
        ],
      ),
    );
  }
}
