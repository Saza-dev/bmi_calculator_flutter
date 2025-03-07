import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  )
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
              )
            ),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                      )
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                      )
                    ),
                  ],
                )),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colour});

  final Color colour;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:colour ,
      ),
    );
  }
}
