import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw1/config/colors.dart';
import 'package:flutter_practice36_hw1/screens/cart_screen.dart';
import 'package:flutter_practice36_hw1/screens/finish_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = "register_screen";
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  Widget textFieldMaker(String hintName, TextEditingController controller) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color(0xFFF2F5FE),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                offset: const Offset(0, 0))
          ]),
      child: TextField(
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },

        
        controller: controller,
        cursorColor: ColorsClass.purple,
        style: const TextStyle(color: ColorsClass.purple, fontSize: 18),
        smartDashesType: SmartDashesType.disabled,
        decoration: InputDecoration(
            hintText: hintName,
            border: const OutlineInputBorder(
                gapPadding: BouncingScrollSimulation.maxSpringTransferVelocity,
                borderSide: BorderSide.none),
            hintStyle:
                const TextStyle(color: ColorsClass.purple, fontSize: 18)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.white,
      appBar: AppBar(
        backgroundColor: ColorsClass.white,
        // toolbarHeight: 45,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, CartScreen.id);
          },
          icon: const Icon(Icons.arrow_back_rounded,
              color: ColorsClass.purple, size: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Register",
                  style: TextStyle(
                      fontSize: 45,
                      color: ColorsClass.purple,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 50,
              ),
              textFieldMaker("Name", _nameController),
              textFieldMaker("Surname", _surnameController),
              textFieldMaker("Email", _emailController),
              textFieldMaker("Phone", _phoneController),
              textFieldMaker("Address", _addressController),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsClass.lightPurple,
                    ),
                    child: TextButton(
                      onPressed: () {
                        FinishScreen.name = _nameController.text;
                        FinishScreen.surname = _surnameController.text;
                        FinishScreen.email = _emailController.text;
                        FinishScreen.phoneNumber = _phoneController.text;
                        FinishScreen.address = _addressController.text;
                        Navigator.pushReplacementNamed(
                            context, FinishScreen.id);
                      },
                      child: const Text("Finish",
                          style: TextStyle(
                              fontSize: 23,
                              color: ColorsClass.purple,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
