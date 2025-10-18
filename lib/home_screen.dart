import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: 
        AssetImage('assets/images/quiz-logo.png')),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 127, 82, 211),
            Color.fromARGB(255, 127, 82, 211),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Learn Flutter the fun Way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 3, 0, 1),
              foregroundColor: Colors.white,
              elevation: 100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.zero),
              ),
            ),
            child: const Text('Start Quiz',
            style: TextStyle(fontSize: 20),),
          ),],
      ),
    );
  }
}