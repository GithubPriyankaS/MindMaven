import 'package:flutter/material.dart';
import 'wave_widget.dart';
import 'edu_hub.dart'; // <-- import Frame10Page

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /// ---- Rectangle behind text ----
          Positioned(
            left: 22,
            top: 243,
            child: Container(
              width: 369,
              height: 330,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(11, 162, 0, 0.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          /// ---- Blob image ----
          Positioned(
            left: 286,
            top: 53,
            child: Transform.rotate(
              angle: 31.2 * 3.14159 / 180,
              child: Image.asset(
                "assets/images/blob-1-opacity-100.gif",
                width: 101.25,
                height: 101.25,
              ),
            ),
          ),

          /// ---- Title ----
          const Positioned(
            left: 35,
            top: 76,
            child: SizedBox(
              width: 381,
              child: Text(
                "Your Superpowers",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                  height: 22 / 40,
                ),
              ),
            ),
          ),

          /// ---- Subtitle ----
          const Positioned(
            left: 42,
            top: 157,
            child: SizedBox(
              width: 204,
              child: Text(
                "Everything You Need, All in One Place",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.white,
                  height: 22 / 16,
                ),
              ),
            ),
          ),

          /// ---- Paragraph ----
          const Positioned(
            left: 35,
            top: 258,
            child: SizedBox(
              width: 343,
              child: Text(
                "Students: Master subjects with AI analytics, ace weekend quizzes, and explore mystery hunts with friends.\n"
                    "Teachers: Track progress effortlessly, design engaging content, and get real-time feedback.\n"
                    "Admins: Oversee everything with powerful institutional analytics and centralized control.",
                style: TextStyle(
                  fontFamily: "Ariom",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white,
                  height: 22 / 20,
                ),
              ),
            ),
          ),

          /// ---- Skip Button ----
          Positioned(
            left: 43,
            top: 630,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const Frame10Page()),
                );
              },
              child: Container(
                width: 326,
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xFF0BA200),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: "Ariom",
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color(0xFFE3E3E8),
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// ---- Continue Button ----
          Positioned(
            left: 43,
            top: 705,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const Frame10Page()),
                );
              },
              child: Container(
                width: 326,
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xFF0BA200),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: "Ariom",
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color(0xFFE3E3E8),
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// ---- Wave at bottom ----
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: WaveWidget(
              height: 150,
              color: Color(0xFF0BA200),
              speed: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
