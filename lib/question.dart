import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:setup/models/answerbutton.dart';
import 'package:setup/models/data/question.dart';

// ignore: must_be_immutable
class Qustion extends StatefulWidget {
  Qustion({super.key, required this.onSelectedAnswers});

  void Function(String answers) onSelectedAnswers;

  @override
  State<Qustion> createState() => _QustionState();
}

class _QustionState extends State<Qustion> {
  //managin question as a state

  var currentQuestionIndex = 0;

  void anserQuestion(String selectedAnswers) {
    widget.onSelectedAnswers(selectedAnswers );
    setState(() {
      // currentQuestionIndex = currentQuestionIndex+1;
      // currentQuestionIndex +=1;// increment by value of 1
      currentQuestionIndex++; //shorter cut to added value or increment to the value by 1
    });
  }
 
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),

            // using spread value and map to convert list of answer into map
            ...currentQuestion.getShuffledAnswers().map((answers) {
              return AnswerButton(answerText: answers, onTap: (){
                anserQuestion(answers);
              }
              //anserQuestion
              );
            })
            // AnswerButton(answerText: currentQuestion.answers[0], onTap: (){}),
            // AnswerButton(answerText: currentQuestion.answers[1], onTap: (){}),
            //  AnswerButton(answerText: currentQuestion.answers[2], onTap: (){}),
            //   AnswerButton(answerText: currentQuestion.answers[3], onTap: (){}),
          ],
        ),
      ),
    );
  }
}
