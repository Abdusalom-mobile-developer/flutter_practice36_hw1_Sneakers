import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/config/colors.dart';
import 'package:flutter_practice36_hw1/mixins/variables.dart';
import 'package:flutter_practice36_hw1/screens/cart_screen.dart';
import 'package:flutter_practice36_hw1/screens/products_screen.dart';

class QuestionAsk1Screen extends StatefulWidget {
  static const String id = "question_ask1_screen";
  const QuestionAsk1Screen({super.key});

  @override
  State<QuestionAsk1Screen> createState() => _QuestionAsk1ScreenState();
}

class _QuestionAsk1ScreenState extends State<QuestionAsk1Screen>
    with Variables {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        color: ColorsClass.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Would you love to add more items?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 12,
                    color: ColorsClass.purple,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsClass.lightPurple,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ProductScreen.id);
                    },
                    child: Text("Yes",
                        style: TextStyle(
                            fontSize: 23,
                            color: ColorsClass.purple,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsClass.lightPurple,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, CartScreen.id);
                    },
                    child: Text("No",
                        style: TextStyle(
                            fontSize: 23,
                            color: ColorsClass.purple,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
