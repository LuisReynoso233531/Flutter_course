// ignore: file_names
import 'package:flutter/material.dart';

final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300, height: 300,),
            Text("Learn Flutter the fun way!", style: TextStyle(color: Colors.white, fontSize: 24 ) ),
            ButtonTheme(child: Text('Start Quiz', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),),)
          ],
        ),
      ),
    );
  }
}
