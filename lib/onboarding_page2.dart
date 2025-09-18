import 'package:flutter/material.dart';
import 'wave_widget.dart';
import 'onboarding_page3.dart';
import 'edu_hub.dart'; // <-- added import

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /// ---- Rectangle behind text ----
          Positioned(
            left: 30,
            top: 239,
            child: Container(
              width: 369,
              height: 243,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(11, 162, 0, 0.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          /// ---- Blob image ----
          Positioned(
            left: 290,
            top: 59,
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
            left: 38,
            top: 68,
            child: SizedBox(
              width: 250,
              child: Text(
                "Join the Revolution",
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
            left: 20,
            top: 129,
            child: SizedBox(
              width: 280,
              child: Text(
                "Your Journey Starts Now",
                textAlign: TextAlign.center,
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
            left: 43,
            top: 263,
            child: SizedBox(
              width: 343,
              child: Text(
                "40% higher engagement. 2x faster feedback loops. Unlimited growth potential. "
                    "MindMaven isn’t just an app – it’s your partner in educational excellence. "
                    "Whether you’re solving algebra puzzles, grading assignments, "
                    "or managing entire institutions, we’ve got your back.",
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const OnboardingPage3()),
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
