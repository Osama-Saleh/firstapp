import 'package:firstapp/featurs/home/ui/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var formKey = GlobalKey<FormState>();

  bool isVisibility = true;
  double sum = 0;

  TextEditingController? number1Controller = TextEditingController();
  TextEditingController? number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              CustomTextFormFiled(
                controller: number1Controller,
                text: 'number 1',
                hintText: 'enter number',
                hintStyle: Colors.black,
                keyboardType: TextInputType.number,
              ),
              CustomTextFormFiled(
                controller: number2Controller,
                text: 'number 2',
                hintText: 'Enter number',
                keyboardType: TextInputType.number,
              ),
              Text('sum : ${sum.toString()}'),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        double n1 = double.parse(number1Controller!.text);
                        double n2 = double.parse(number2Controller!.text);
                        sum = n1 + n2;
                      } else {
                        print('Fiald Login');
                      }
                      setState(() {});
                    },
                    child: Text('Login')),
              )
            ],
          ),
        ),
      )),
    );
  }
}
