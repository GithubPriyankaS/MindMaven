import 'package:flutter/material.dart';
import 'dart:math' as math;

class WaveWidget extends StatefulWidget {
  final Color color; // wave color
  final double height; // height of wave
  final double speed; // speed of animation

  const WaveWidget({
    super.key,
    this.color = const Color(0xFF0BA200),
    this.height = 150,
    this.speed = 1.0,
  });

  @override
  State<WaveWidget> createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<WaveWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (5000 ~/ widget.speed)),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: _WavePainter(
              animationValue: _controller.value,
              color: widget.color,
            ),
          );
        },
      ),
    );
  }
}

class _WavePainter extends CustomPainter {
  final double animationValue;
  final Color color;

  _WavePainter({required this.animationValue, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();
    path.moveTo(0, size.height);

    // Generate a sine wave path
    for (double i = 0; i <= size.width; i++) {
      double y = math.sin((i / size.width * 2 * math.pi) + (animationValue * 2 * math.pi)) * 20 + size.height * 0.5;
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
