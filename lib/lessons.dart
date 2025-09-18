import 'package:flutter/material.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Adventure Forests",
          style: TextStyle(
            fontFamily: "Ariom",
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: PageView(
        children: [
          _buildForestPage(
            forestName: "🌲 Evergreen Forest",
            color: Colors.green.shade700,
            context: context,
          ),
          _buildForestPage(
            forestName: "🌴 Tropical Forest",
            color: Colors.teal.shade600,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _buildForestPage({
    required String forestName,
    required Color color,
    required BuildContext context,
  }) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            forestName,
            style: const TextStyle(
              fontFamily: "Ariom",
              fontWeight: FontWeight.w900,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),

          // Path of lessons
          Wrap(
            spacing: 16,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: List.generate(10, (index) {
              return _buildLessonNode(
                lessonNumber: index + 1,
                color: color,
                context: context,
              );
            }),
          ),

          const SizedBox(height: 40),
          Text(
            "Swipe → to go to next forest",
            style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonNode({
    required int lessonNumber,
    required Color color,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        // Navigate to lesson
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => LessonDetailPage(
              lessonNumber: lessonNumber,
            ),
          ),
        );
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 6,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "$lessonNumber",
            style: const TextStyle(
              fontFamily: "Ariom",
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// --- LESSON DETAIL PAGE ---
class LessonDetailPage extends StatefulWidget {
  final int lessonNumber;
  const LessonDetailPage({super.key, required this.lessonNumber});

  @override
  State<LessonDetailPage> createState() => _LessonDetailPageState();
}

class _LessonDetailPageState extends State<LessonDetailPage> {
  bool? isAnswerCorrect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Lesson ${widget.lessonNumber}"),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lesson ${widget.lessonNumber} Content",
              style: const TextStyle(
                fontFamily: "Ariom",
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Here goes your lesson explanation, images, and interactive content...",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Spacer(),

            // Quiz
            const Text(
              "Quiz Question:",
              style: TextStyle(
                fontFamily: "Ariom",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnswerCorrect = true;
                });
              },
              child: const Text("Correct Answer"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnswerCorrect = false;
                });
              },
              child: const Text("Wrong Answer"),
            ),
            const SizedBox(height: 20),

            if (isAnswerCorrect != null)
              Text(
                isAnswerCorrect! ? "✅ Correct!" : "❌ Wrong, try again!",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: isAnswerCorrect! ? Colors.green : Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
