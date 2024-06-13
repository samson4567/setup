import 'package:flutter/material.dart';
import 'package:setup/home.dart';
import 'package:setup/models/data/question.dart';
import 'package:setup/question.dart';
import 'package:setup/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
// first method to lift a screend or switching screen 1 =2
  // Widget? activeHome;

  // @override
  // void initState() {
  //     activeHome =  Home(switchHome);
  //   super.initState();
  // }
// switchHome(){
//   setState(() {
//      activeHome = const Qustion();
//   });
// }
// the quiz state manage both start(startScreen(home) state and question state()Question
// also store the selected answers choose by the user)

  List<String> SelectedAnsers = [];

  var activeHome = 'Start - Screen';

  switchHome() {
    setState(() {
      activeHome = 'qustion_screen';
    });
  }

  void chooseAnswer(String answer) {
    SelectedAnsers.add(answer);
    if (SelectedAnsers.length == questions.length) {
      setState(() {
        SelectedAnsers = [];
        activeHome = 'return_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
// third approach (if / S statement)
    Widget screenWidget = Home(switchHome);

    if (activeHome == 'qustion_screen') {
      screenWidget = Qustion(
        onSelectedAnswers: chooseAnswer,
      );
    }
    if(activeHome == 'eturn_screen'){
screenWidget = const ResultScreen();

    }
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 79, 12, 196),
          Color.fromARGB(255, 79, 12, 196)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        // using tenary expression(second method for handling state or switching)
        //  first method to the tenairy expression
        child: screenWidget,
        // child:
        //     activeHome == 'Start - Screen' ? Home(switchHome) : const Qustion()),
      ),
    ));
  }
}
