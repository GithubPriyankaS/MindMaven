import 'package:flutter/material.dart';

class UploadVideosPage extends StatelessWidget {
  const UploadVideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Upload Videos", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // TODO: Implement video upload functionality
          },
          icon: const Icon(Icons.upload, color: Colors.white),
          label: const Text("Upload New Video", style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
    );
  }
}
