import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('you answer x out y of y question correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of ansers answers and questions'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text(' Restart Quiz'))
          ],
        ));
  }
}
