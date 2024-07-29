import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstContainerWidget extends StatelessWidget {
  const FirstContainerWidget(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            height: 280, color: const Color.fromARGB(151, 255, 255, 255)),
        const SizedBox(height: 60),
        Text('Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 220, 218, 218),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            )),
      ],
    ));
  }
}
