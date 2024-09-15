// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/config/colors.dart';
import 'package:flutter_practice36_hw1/mixins/variables.dart';
import 'package:flutter_practice36_hw1/screens/cart_screen.dart';
import 'package:flutter_practice36_hw1/screens/question_ask1_screen.dart';

class ProductScreen extends StatefulWidget {
  static const String id = "product_screen";
  const ProductScreen({
    super.key,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> with Variables {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsClass.white,
        appBar: AppBar(
          backgroundColor: ColorsClass.white,
          toolbarHeight: 75,
          title: const Text("Sneakers",
              style: TextStyle(
                  fontSize: 47,
                  color: ColorsClass.purple,
                  fontWeight: FontWeight.bold)),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: ColorsClass.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              height: 128,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              offset: const Offset(0, 2))
                        ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(listOfProducts[index].imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            listOfProducts[index].productName,
                            style: const TextStyle(
                                fontSize: 20,
                                color: ColorsClass.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "\$${listOfProducts[index].cost}",
                            style: const TextStyle(
                                fontSize: 25,
                                color: ColorsClass.purple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorsClass.lightPurple),
                      child: IconButton(
                          onPressed: () {
                            CartScreen.listOfProductsInCart.add(listOfProducts[index]);
                            Navigator.pushNamed(context, QuestionAsk1Screen.id);
                          },
                          icon: const Icon(
                            Icons.add,
                            color: ColorsClass.purple,
                            size: 35,
                          )))
                ],
              )),
          itemCount: listOfProducts.length,
        ));
  }
}
