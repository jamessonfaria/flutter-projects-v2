import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor with parameter required
  // const GradientContainer({super.key, required this.colors});
  const GradientContainer(this.color1, this.color2, {super.key});

  // Constructor of function
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurpleAccent,
        color2 = Colors.purple;

  final ColorSwatch color1;
  final ColorSwatch color2;

  //final List<ColorSwatch> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2], //colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
