// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/classes/product_info.dart';
import 'package:flutter_practice36_hw1/config/colors.dart';
import 'package:flutter_practice36_hw1/mixins/variables.dart';
import 'package:flutter_practice36_hw1/screens/products_screen.dart';
import 'package:flutter_practice36_hw1/screens/question_ask2_screen.dart';

class CartScreen extends StatefulWidget {
  static List<ProductInfo> listOfProductsInCart = [];
  static const String id = "cart_screen";
  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with Variables {
  String _sumOfprices() {
    double sum = 0;
    for (ProductInfo elem in CartScreen.listOfProductsInCart) {
      sum += elem.cost;
    }

    return sum.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsClass.white,
        appBar: AppBar(
          backgroundColor: ColorsClass.white,
          toolbarHeight: 75,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ProductScreen.id);
            },
            icon: const Icon(Icons.arrow_back_rounded,
                color: ColorsClass.purple, size: 35),
          ),
          title: const Text("Cart",
              style: TextStyle(
                  fontSize: 40,
                  color: ColorsClass.purple,
                  fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.builder(
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
                                  image: AssetImage(CartScreen
                                      .listOfProductsInCart[index].imgPath),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  CartScreen
                                      .listOfProductsInCart[index].productName,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: ColorsClass.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$${CartScreen.listOfProductsInCart[index].cost}",
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color: ColorsClass.purple,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
                itemCount: CartScreen.listOfProductsInCart.length,
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const Divider(
                      color: ColorsClass.purple,
                      thickness: 3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            r"Total: $" + _sumOfprices(),
                            style: const TextStyle(
                                fontSize: 25,
                                color: ColorsClass.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
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
                              context, QuestionAsk2Screen.id);
                        },
                        child: const Text("Check Out",
                            style: TextStyle(
                                fontSize: 23,
                                color: ColorsClass.purple,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
