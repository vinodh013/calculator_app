import 'package:calculator/components/roundbutton.dart';
import 'package:calculator/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      userInput.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      answer.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )
                  ],
                ),
              ),
            Expanded(
              flex: 2,
              child: 
             Column(
                children: [
                    Row(
                children: [
                  RoundButton(
                    title: "AC",
                    onPress: () {
                      userInput = "";
                      answer = '';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "+/-",
                    onPress: () {
                      userInput += '';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "%",
                    onPress: () {
                      userInput += '%';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "/",
                    color: Colors.orange,
                    onPress: () {
                      userInput += '/';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  RoundButton(
                    title: "7",
                    onPress: () {
                      userInput += '7';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "8",
                    onPress: () {
                      userInput += '8';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "0",
                    onPress: () {
                      userInput += '0';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "X",
                    color: Colors.orange,
                    onPress: () {
                      userInput += '*';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  RoundButton(
                    title: "4",
                    onPress: () {
                      userInput += '4';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "5",
                    onPress: () {
                      userInput += '5';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "6",
                    onPress: () {
                      userInput += '6';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "-",
                    color: Colors.orange,
                    onPress: () {
                      userInput += '-';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  RoundButton(
                    title: "1",
                    onPress: () {
                      userInput += '1';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "2",
                    onPress: () {
                      userInput += '2';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "3",
                    onPress: () {
                      userInput += '3';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "+",
                    color: Colors.orange,
                    onPress: () {
                      userInput += '+';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  RoundButton(
                    title: "0",
                    onPress: () {
                      userInput += '0';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: ".",
                    onPress: () {
                      userInput += '.';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "del",
                    onPress: () {
                      userInput += '';
                      setState(() {});
                    },
                  ),
                  RoundButton(
                    title: "=",
                    color: Colors.orange,
                    onPress: () {
                     
                       equalPress();
                       setState(() {
                         
                       });
                    },
                  ),
                ],
              ),
              ]
             )
            
            )
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

   
    setState(() {
 answer = eval.toString();
    });
  }
}
