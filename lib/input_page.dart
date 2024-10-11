import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(color: Colors.white),
            ),
          ),
          shape: const Border(
            bottom: BorderSide(
              color: Colors.grey, // Color of the bottom border
              width: 2.0, // Thickness of the bottom border
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        carChild: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 80,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "MALE",
                              style: klabelTextStyle,
                            )
                          ],
                        ),
                        color: selectedGender == Gender.male
                            ? kactiveCardColor
                            : kinactiveCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        carChild: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 80,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "FEMALE",
                              style: klabelTextStyle,
                            )
                          ],
                        ),
                        color: selectedGender == Gender.female
                            ? kactiveCardColor
                            : kinactiveCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kactiveCardColor,
                carChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: knumberTextStyle),
                        const Text(
                          "cm",
                          style: klabelTextStyle,
                        )
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: const Color(0xFFEB1555),
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                        ;
                      },
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: kactiveCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kbottomContainerCOlor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kbottomContainerHeight,
            ),
          ],
        ));
  }
}
