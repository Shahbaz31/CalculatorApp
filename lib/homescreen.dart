import 'package:calculatorapp/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal.shade800,
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   backgroundColor: Colors.yellow.shade500,
      //   centerTitle: false,
      //    actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(12.0),
      //       child: Icon(Icons.search,size: 30,),
      //     )
      //   ],
      //   title: const Text('Calculator App',style: TextStyle(color: Colors.blue,fontSize: 25),),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(

                        child: Text(
                      userInput,
                      style: const TextStyle(fontSize: 40, color: Colors.white),
                    ),
                      alignment: Alignment.bottomRight,
                    ),
                    const SizedBox(height: 5,),
                    Align(
                      child: Text(answer.toString(),
                          style: const TextStyle(fontSize: 40, color: Colors.white)),
                      alignment: Alignment.bottomRight,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: 'AC' ,

                          onPress: () {
                            userInput = '';
                            answer = ' ';
                            setState(() {});
                          },
                        ),
                        MyButton(
                            title: '+/-',
                            onPress: () {
                              userInput += '+/-';
                              setState(() {});
                            }),
                        MyButton(
                            title: '%',
                            onPress: () {
                              userInput += '%';
                              setState(() {});
                            }),
                        MyButton(
                          title: '/',
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '7',
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        MyButton(
                            title: '8',
                            onPress: () {
                              userInput += '8';
                              setState(() {});
                            }),
                        MyButton(
                            title: '9',
                            onPress: () {
                              userInput += '9';
                              setState(() {});
                            }),
                        MyButton(
                          title: 'x',
                          onPress: () {
                            userInput += '*';
                            setState(() {});
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '4',
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        MyButton(
                            title: '5',
                            onPress: () {
                              userInput += '5';
                              setState(() {});
                            }),
                        MyButton(
                            title: '6',
                            onPress: () {
                              userInput += '6';
                              setState(() {});
                            }),
                        MyButton(
                          title: '-',
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '1',
                          onPress: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        MyButton(
                            title: '2',
                            onPress: () {
                              userInput += '2';
                              setState(() {});
                            }),
                        MyButton(
                            title: '3',
                            onPress: () {
                              userInput += '3';
                              setState(() {});
                            }),
                        MyButton(
                          title: '+',
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '0',
                          onPress: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        MyButton(
                            title: 'DEL',
                            onPress: () {
                              userInput =  userInput.substring(0,userInput.length-1);
                              setState(() {});
                            }),
                        MyButton(
                            title: '.',
                            onPress: () {
                              userInput += '.';
                              setState(() {});
                            }),
                        MyButton(
                          title: '=',
                          onPress: () {
                            equalPres();
                            setState(() {});
                          },
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalPres() {
    // String finalinput=userInput;
    // finalinput=userInput.replaceAll('x', '*');


    Parser p = Parser();
    Expression expression = p.parse(userInput);

    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
