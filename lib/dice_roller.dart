import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_app/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/Dice_1.png";
  int randNumber = 1;
  bool isResult = true;

  void rollDice() {
    setState(() {
      isResult = false;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        randNumber = randomizer.nextInt(6) + 1;
        isResult = true;
      });
    });

    print("Button pressed");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("Mango\nDice"),
        const SizedBox(
          height: 50,
        ),
        isResult
            ? Image.asset(
                "assets/images/Dice_$randNumber.png",
                width: 200,
              )
            : const Icon(
                Icons.sync_rounded,
                size: 200,
              ),
        const SizedBox(
          height: 50,
        ),
        TextButton.icon(
          onPressed: isResult ? rollDice : null,
          style: TextButton.styleFrom(
            elevation: 1,
            shadowColor: const Color.fromARGB(255, 255, 140, 0),
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepOrange,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          icon: const Icon(Icons.casino),
          label: const Text("Roll Dice"),
        ),
        const SizedBox(
          height: 70,
        ),
      ],
    );
  }
}
