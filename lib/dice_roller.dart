import 'dart:math';

import 'package:flutter/material.dart';

final _random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var _currentDiceRoll = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$_currentDiceRoll.png', width: 200),
        const SizedBox(height: 30),
        FilledButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll!'),
        ),
      ],
    );
  }

  void rollDice() {
    setState(() {
      _currentDiceRoll = _random.nextInt(6) + 1;
    });
  }
}
