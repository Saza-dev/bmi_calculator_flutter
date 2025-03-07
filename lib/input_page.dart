import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  // 1 = male, 2 = female
  void updateColour(int gender){
    // male card pressed
    if (gender == 1){
      if (maleCardColour == inactiveCardColour){
        maleCardColour = activeCardColor;
        femaleCardColour = inactiveCardColour;
      }else{
        maleCardColour = inactiveCardColour;
      }
    } if (gender == 2){
      if(femaleCardColour == inactiveCardColour){
        femaleCardColour = activeCardColor;
        maleCardColour = inactiveCardColour;
      }
      else {
        maleCardColour = inactiveCardColour;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                                    cardChild: IconContent(gender:"MALE",icon: FontAwesomeIcons.mars,),
                                    colour: maleCardColour,
                                  ),
                  )),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColour(2);
                    });
                  },
                  child: ReusableCard(
                    cardChild: IconContent(gender:"FEMALE", icon:FontAwesomeIcons.venus ,),
                    colour: femaleCardColour,
                  ),
                ),
              ),
            ],
              ),
          ),
          Expanded(
              child: ReusableCard(
            colour: activeCardColor,
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}




