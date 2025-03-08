import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  int height = 180;
  

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      gender: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColour,
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        gender: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ),
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: activeCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "HEIGHT",
                  style: labelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: numberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    overlayColor:Color(0x29EB1555),
                    inactiveTrackColor: Color(0xFF8D8E98),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Text('WEIGHT',style: labelTextStyle,),

                        ],
                      ),
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
