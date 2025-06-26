import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';// Updated import

class LatexRenderer extends StatelessWidget {
  final String expression;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final EdgeInsets? padding;

  const LatexRenderer({
    super.key,
    required this.expression,
    this.textStyle,
    this.textAlign,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Math.tex(
        expression,
        textStyle: textStyle ?? Theme.of(context).textTheme.bodyLarge,
     //   textAlign: textAlign,
        mathStyle: MathStyle.display,
      ),
    );
  }
}