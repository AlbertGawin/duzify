import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeText extends StatefulWidget {
  final String text;
  final BoxConstraints constraints;
  final TextStyle textStyle;

  const MarqueeText({
    super.key,
    required this.text,
    required this.constraints,
    required this.textStyle,
  });

  @override
  State<MarqueeText> createState() => _MarqueeTextState();
}

class _MarqueeTextState extends State<MarqueeText> {
  @override
  Widget build(BuildContext context) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: widget.text,
        style: widget.textStyle,
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: widget.constraints.maxWidth);

    if (textPainter.didExceedMaxLines ||
        textPainter.width > widget.constraints.maxWidth) {
      return Marquee(
        text: widget.text,
        fadingEdgeStartFraction: 0.1,
        fadingEdgeEndFraction: 0.1,
        style: widget.textStyle,
        scrollAxis: Axis.horizontal,
        blankSpace: 120.0,
        velocity: 36,
        pauseAfterRound: Duration(seconds: 1),
        accelerationDuration: Duration(milliseconds: 500),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      );
    } else {
      return Text(widget.text, style: widget.textStyle);
    }
  }
}
