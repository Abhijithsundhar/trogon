

import 'package:flutter/cupertino.dart';

const LinearGradient myGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF512E7E),
    Color(0xFFA073DA),
  ],
  stops: [0.0852, 1.4671],
  transform: GradientRotation(194.66 * 3.1415927 / 180),
);

final LinearGradient a = LinearGradient(
  begin: Alignment.topLeft, // You can adjust the direction as needed
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFFAF01), // #FFAF01
    Color(0xFFECC07F), // #ECC07F
  ],
  stops: [0.1162, 0.8498], // Corresponding stops for the gradient
);
final b = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFED617B), // #ED617B
    Color(0xFFF2859B), // #F2859B
  ],
  stops: [0.066, 0.879], // Corresponding stops for the gradient
  transform: GradientRotation(170.4 * (3.141592653589793 / 180.0)), // Convert degrees to radians
);
const LinearGradient c = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF24AED2), // Start color
    Color(0xFF7BC9DD), // End color
  ],
  stops: [0.1162, 0.8498], // Corresponding to the percentages in the gradient
  transform: GradientRotation(171.52 * 3.1415927 / 180), // Rotation in radians
);
final LinearGradient d = LinearGradient(
  colors: [Color(0xFFAE52B5), Color(0xFFBF64AE)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.0142, 0.9858],
);

///height and width
 double width = 0;
 double height = 0;