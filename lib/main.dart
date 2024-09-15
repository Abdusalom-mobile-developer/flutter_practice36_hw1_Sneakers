import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/screens/cart_screen.dart';
import 'package:flutter_practice36_hw1/screens/end_screen.dart';
import 'package:flutter_practice36_hw1/screens/finish_screen.dart';
import 'package:flutter_practice36_hw1/screens/products_screen.dart';
import 'package:flutter_practice36_hw1/screens/question_ask1_screen.dart';
import 'package:flutter_practice36_hw1/screens/question_ask2_screen.dart';
import 'package:flutter_practice36_hw1/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductScreen(),
      routes: {
        ProductScreen.id: (context) => const ProductScreen(),
        QuestionAsk1Screen.id: (context) => const QuestionAsk1Screen(),
        QuestionAsk2Screen.id: (context) => const QuestionAsk2Screen(),
        CartScreen.id: (context) => const CartScreen(),
        FinishScreen.id: (context) => const FinishScreen(),
        EndScreen.id: (context) => const EndScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
      },
    );
  }
}
