import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/config/colors.dart';
import 'package:flutter_practice36_hw1/mixins/variables.dart';
import 'package:flutter_practice36_hw1/screens/cart_screen.dart';
import 'package:flutter_practice36_hw1/screens/products_screen.dart';

class EndScreen extends StatefulWidget {
  static const String id = "end_screen";
  const EndScreen({super.key});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> with Variables {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          color: ColorsClass.white,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorsClass.purple, width: 5),
                            shape: BoxShape.circle),
                        child: Icon(Icons.check_rounded,
                            color: ColorsClass.purple,
                            size: MediaQuery.of(context).size.width / 3)),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Success",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 8,
                            color: ColorsClass.purple,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width / 6.7,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 6.7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsClass.lightPurple,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, ProductScreen.id);
                        for (int i = 0;
                            i < CartScreen.listOfProductsInCart.length;
                            i++) {
                          CartScreen.listOfProductsInCart.removeAt(i);
                          i--;
                        }
                      },
                      child: Text("Main Screen",
                          style: TextStyle(
                              fontSize: 23,
                              color: ColorsClass.purple,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
