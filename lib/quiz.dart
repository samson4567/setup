import 'package:flutter/material.dart';
import 'package:setup/home.dart';
import 'package:setup/question.dart';

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
  var activeHome = 'Start - Screen';

  switchHome() {
    setState(() {
      activeHome = 'qustion_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
// third approach (if / S statement)
Widget  screenWidget = Home(switchHome);

if(activeHome == 'qustion_screen'){
  screenWidget = Qustion()
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
    );
  }
}
