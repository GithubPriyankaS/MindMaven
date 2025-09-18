import 'package:flutter/material.dart';

class WeekendQuizPage extends StatefulWidget {
  const WeekendQuizPage({super.key});

  @override
  State<WeekendQuizPage> createState() => _WeekendQuizPageState();
}

class _WeekendQuizPageState extends State<WeekendQuizPage> {
  // Store user selections
  Map<int, int?> selectedOptions = {};

  // Store correct answers (index of correct option in the list)
  final Map<int, int> correctAnswers = {
    0: 2, // Question 1 → "C. Carbon dioxide (CO₂)"
    1: 1, // Question 2 → "B. Burning of fossil fuels"
  };

  bool submitted = false;

  // Example questions and options
  final List<Map<String, dynamic>> questions = [
    {
      "question": "Which gas is mainly responsible for global warming?",
      "options": [
        "A. Oxygen (O₂)",
        "B. Nitrogen (N₂)",
        "C. Carbon dioxide (CO₂)",
        "D. Hydrogen (H₂)",
      ],
    },
    {
      "question": "What is the main human activity that causes climate change?",
      "options": [
        "A. Planting trees",
        "B. Burning of fossil fuels",
        "C. Using solar panels",
        "D. Recycling waste",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                "Week-End Quiz",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Ariom',
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Subtitle
              Text(
                "Topic: Climate Change",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),

              // Questions
              ...questions.asMap().entries.map((entry) {
                final int qIndex = entry.key;
                final String question = entry.value["question"];
                final List<String> options = entry.value["options"];

                return Card(
                  color: Colors.white, // neutral background
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Question Text
                        Text(
                          "Q${qIndex + 1}. $question",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Options
                        ...options.asMap().entries.map((optEntry) {
                          final int optIndex = optEntry.key;
                          final String optionText = optEntry.value;
                          final bool isSelected =
                              selectedOptions[qIndex] == optIndex;
                          final bool isCorrect =
                              correctAnswers[qIndex] == optIndex;

                          Color bgColor = Colors.grey.shade200;
                          Color textColor = Colors.black;

                          if (submitted) {
                            if (isCorrect) {
                              bgColor = Colors.green.shade600;
                              textColor = Colors.white;
                            } else if (isSelected && !isCorrect) {
                              bgColor = Colors.red.shade600;
                              textColor = Colors.white;
                            }
                          } else if (isSelected) {
                            bgColor = Colors.blue.shade200;
                            textColor = Colors.black;
                          }

                          return GestureDetector(
                            onTap: submitted
                                ? null
                                : () {
                              setState(() {
                                selectedOptions[qIndex] = optIndex;
                              });
                            },
                            child: Card(
                              color: bgColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  optionText,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                );
              }),

              const SizedBox(height: 24),

              // Submit Button
              ElevatedButton(
                onPressed: submitted
                    ? null
                    : () {
                  setState(() {
                    submitted = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
