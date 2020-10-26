import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kNumberTextStyle = TextStyle(
  height: 2.0,
  fontSize: 35.0,
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData.dark(),
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  MyCalculator({Key key}) : super(key: key);

  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF162A3F),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text(
                "6.2831852 x 1.\n Affan Murtaza181099",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 35.0,
                  height: 2.5,
                ),
              ),
              margin: EdgeInsets.only(top: 25.0, bottom: 25.0),
              color: Color(0xFF0C1521),
              width: double.infinity,
              //height: 180.0,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Button(
                    numberText: "C",
                    color: Color(0xFF575A60),
                  ),
                  Button(
                    numberText: "±",
                    color: Color(0xFF575A60),
                  ),
                  Button(
                    icon: Icon(FontAwesomeIcons.percent),
                    color: Color(0xFF575A60),
                  ),
                  Button(
                    icon: Icon(FontAwesomeIcons.divide),
                    color: Color(0xFF205D7F),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Button(
                    numberText: "7",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "8",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "9",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "x",
                    color: Color(0xFF205D7F),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Button(
                    numberText: "4",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "5",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "6",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    icon: Icon(FontAwesomeIcons.minus),
                    color: Color(0xFF205D7F),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Button(
                    numberText: "1",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "2",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    numberText: "3",
                    color: Color(0xFF7B7A7C),
                  ),
                  Button(
                    icon: Icon(FontAwesomeIcons.plus),
                    color: Color(0xFF205D7F),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "0",
                        textAlign: TextAlign.center,
                        style: kNumberTextStyle,
                      ),
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF7B7A7C),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Button(
                    numberText: ".",
                    color: Color(0xFF575A60),
                  ),
                  Button(
                    icon: Icon(FontAwesomeIcons.equals),
                    color: Color(0xFF205D7F),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Icon icon;
  final String numberText;
  final Color color;

  Button({this.icon, this.numberText, this.color}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: icon != null
            ? icon
            : Text(
                numberText,
                textAlign: TextAlign.center,
                style: kNumberTextStyle,
              ),
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
