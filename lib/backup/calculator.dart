import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  static const routeName ='/calculator';
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mediumGrey = Color.fromARGB(255, 189, 196, 214);
    const darkGrey = Color.fromARGB(255, 45, 64, 111);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 227, 230, 239),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context).textTheme.headline3?.copyWith(color: darkGrey),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: <Widget>[
              // Container(
              //   color: Theme.of(context).primaryColorLight,
              //   child: Center(
              //     child: Text(
              //       'C',
              //       style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).primaryColorDark)
              //     )
              //   ),
              // )
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                onTap: (){
                  print('C');
                },
              ),
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: (){
                  print('+/-');
                },
              ),
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '-',
                onTap: (){
                  print('-');
                },
              ),
              CalculatorButton.Icon(
                backgroundColor: darkGrey,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                onTap: (){
                  print('Backspace');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: (){
                  print('7');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: (){
                  print('8');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: (){
                  print('9');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                onTap: (){
                  print('/');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: (){
                  print('4');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: (){
                  print('5');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: (){
                  print('6');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '*',
                onTap: (){
                  print('*');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: (){
                  print('1');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: (){
                  print('2');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: (){
                  print('3');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                onTap: (){
                  print('-');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: (){
                  print('0');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: (){
                  print('.');
                },
              ),
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: (){
                  print('=');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '+',
                onTap: (){
                  print('+');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class  CalculatorButton extends StatelessWidget {
  final VoidCallback onTap;

  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;

  CalculatorButton({
    // Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap
  }) ;

  CalculatorButton.Icon({
    // Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.text,
    required this.onTap
  }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          // child: Text(
          //   text,
          //   style: Theme.of(context).textTheme.headline4?.copyWith(color: foregroundColor),
          // ),
          child: icon == null
            ? Text (
              text,
              style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: foregroundColor),
            )
            : Icon(
                icon,
                color: foregroundColor
            )
        ),
      )
    );
  }
}