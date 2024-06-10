import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.StartQuiz,{super.key});

  final void Function() StartQuiz;



  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image.asset("assets/images/quiz-logo.png", width: 300,color: Colors.white10,),

        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn flutter in fun way!',
          style: TextStyle(
              fontSize: 32, color: Color.fromARGB(255, 240, 240, 238)),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: StartQuiz,
            label: const Text('Start quiz'))
      ],
    ));
  }
}
