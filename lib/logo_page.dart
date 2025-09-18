import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();

    // Navigate to LandingPage after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/landing');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 924,
        color: Colors.black, // background: #000000
        child: Stack(
          children: [
            // blob image
            Positioned(
              left: 43,
              top: 306,
              child: SizedBox(
                width: 312,
                height: 312,
                child: Image.asset(
                  'assets/images/blob-1-opacity-100 (1).gif', // put image in assets
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // MindMaven text
            Positioned(
              left: 96,
              top: 443,
              child: SizedBox(
                width: 250,
                height: 38,
                child: Text(
                  "MindMaven",
                  style: TextStyle(
                    fontFamily: "Ariom", // make sure font is added in pubspec.yaml
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    height: 38 / 32, // line-height: 38px
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
