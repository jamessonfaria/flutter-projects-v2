import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {

  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
