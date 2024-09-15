import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/config/colors.dart';
import 'package:flutter_practice36_hw1/mixins/variables.dart';
import 'package:flutter_practice36_hw1/screens/finish_screen.dart';
import 'package:flutter_practice36_hw1/screens/register_screen.dart';

class QuestionAsk2Screen extends StatefulWidget {
  static const String id = "question_ask2_screen";
  const QuestionAsk2Screen({super.key});

  @override
  State<QuestionAsk2Screen> createState() => _QuestionAsk2ScreenState();
}

class _QuestionAsk2ScreenState extends State<QuestionAsk2Screen>
    with Variables {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: ColorsClass.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Do you have an account?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 12,
                    color: ColorsClass.purple,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsClass.lightPurple,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RegisterScreen.id);
                    },
                    child: const Text("No",
                        style: TextStyle(
                            fontSize: 23,
                            color: ColorsClass.purple,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsClass.lightPurple,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, FinishScreen.id);
                    },
                    child: const Text("Yes",
                        style: TextStyle(
                            fontSize: 23,
                            color: ColorsClass.purple,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
