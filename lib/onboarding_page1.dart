import 'package:flutter/material.dart';
import 'onboarding_page2.dart';
import 'wave_widget.dart';
import 'edu_hub.dart'; // <-- added import

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: 412,
        height: 924,
        child: Stack(
          children: [
            /// ---- Blob image ----
            Positioned(
              left: 287,
              top: 18,
              child: Transform.rotate(
                angle: 31.2 * 3.14159 / 180,
                child: Image.asset(
                  "assets/blob-1-opacity-100.png",
                  width: 101.25,
                  height: 101.25,
                ),
              ),
            ),

            /// ---- Greenish box behind text ----
            Positioned(
              left: 20,
              top: 180,
              child: Container(
                width: 369,
                height: 243,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(11, 162, 0, 0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            /// ---- The Vision ----
            const Positioned(
              left: 20,
              top: 43,
              child: Text(
                "The Vision",
                style: TextStyle(
                  fontFamily: 'Ariom',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),

            /// ---- Education, Reimagined ----
            const Positioned(
              left: 35,
              top: 88,
              child: Text(
                "Education, Reimagined",
                style: TextStyle(
                  fontFamily: 'Ariom',
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            /// ---- Long description ----
            const Positioned(
              left: 33,
              top: 199,
              child: SizedBox(
                width: 340,
                child: Text(
                  "Welcome to MindMaven – where learning transcends classrooms. "
                      "We’ve built an ecosystem that connects students, teachers, and administrators "
                      "in one seamless experience. No more fragmented apps. No more disconnected journeys. "
                      "Just intuitive tools designed to empower minds and shape futures.",
                  style: TextStyle(
                    fontFamily: 'Ariom',
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                    height: 1.47,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            /// ---- Skip button ----
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
                  alignment: Alignment.center,
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: 'Ariom',
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color(0xFFE3E3E8),
                    ),
                  ),
                ),
              ),
            ),

            /// ---- Continue button ----
            Positioned(
              left: 43,
              top: 705,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingPage2(),
                    ),
                  );
                },
                child: Container(
                  width: 326,
                  height: 54,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0BA200),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: 'Ariom',
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color(0xFFE3E3E8),
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
      ),
    );
  }
}
