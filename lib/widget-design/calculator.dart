import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  static const routeName ='/calculator';
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _input = '0';
  String _operator = '';
  double _num1 = 0;
  double _num2 = 0;

  void _buttonPressed(String text) {
    setState(() {
      if (text == 'C') {
        _output ='0';
        _input = '0';
        _operator = '';
        _num1 = 0;
        _num2 = 0;
      } else if (text == '+' || text == '-' || text == '*' || text == '/') {
        _num1 = double.parse(_input);
        _operator = text;
        _input = '0';
      } else if (text == '='){
        _num2 = double.parse(_input);
        if (_operator == '+'){
          _output = (_num1 + _num2).toString();
        }else if (_operator == '-'){
          _output = (_num1 - _num2).toString();
        }else if (_operator == '*'){
          _output = (_num1 * _num2).toString();
        }else if (_operator == '/') {
          _output = (_num1 / _num2).toString();
        }
        _input = _output;
      } else if (text == 'Backspace') {
        _input = _input.length > 1 ? _input.substring(0, _input.length -1) : '0';
        _output = _input;
      } else {
        if (_input == '0') {
          _input = text;
        } else {
          _input += text;
        }
        _output = _input;
      }
    });
  }

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
                  _output,
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
                  _buttonPressed('C');
                },
              ),
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: (){
                  _buttonPressed('+/-');
                },
              ),
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '-',
                onTap: (){
                  _buttonPressed('-');
                },
              ),
              CalculatorButton.Icon(
                backgroundColor: darkGrey,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                onTap: (){
                  _buttonPressed('Backspace');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: (){
                  _buttonPressed('7');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: (){
                  _buttonPressed('8');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: (){
                  _buttonPressed('9');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                onTap: (){
                  _buttonPressed('/');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: (){
                  _buttonPressed('4');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: (){
                  _buttonPressed('5');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: (){
                  _buttonPressed('6');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '*',
                onTap: (){
                  _buttonPressed('*');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: (){
                  _buttonPressed('1');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: (){
                  _buttonPressed('2');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: (){
                  _buttonPressed('3');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                onTap: (){
                  _buttonPressed('-');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: (){
                  _buttonPressed('0');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: (){
                  _buttonPressed('.');
                },
              ),
              CalculatorButton(
                backgroundColor: mediumGrey,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: (){
                  _buttonPressed('=');
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '+',
                onTap: (){
                  _buttonPressed('+');
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