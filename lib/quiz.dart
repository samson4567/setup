import 'package:flutter/material.dart';
import 'package:setup/home.dart';
import 'package:setup/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget? activeHome;

  @override
  void initState() {
      activeHome =  Home(switchHome);
    super.initState();
  }
switchHome(){
  setState(() {
     activeHome = const Qustion();
  });
}
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 79, 12, 196),
            Color.fromARGB(255, 79, 12, 196)
          ], begin: Alignment.topLeft,
          end: Alignment.bottomRight
          
          )),
          child: activeHome),
    ),
  );
  }
}