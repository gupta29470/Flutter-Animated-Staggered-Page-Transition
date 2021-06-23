import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlidingContainer extends StatelessWidget {
  final double beginOffset_1;
  final double beginOffset_2;
  final Color containerColor;
  final double intervalBegin;
  final double intervalEnd;

  const SlidingContainer({
    required this.beginOffset_1,
    required this.beginOffset_2,
    required this.containerColor,
    required this.intervalBegin,
    required this.intervalEnd,
  });

  @override
  Widget build(BuildContext context) {
    final animation = Provider.of<Animation<double>>(context, listen: false);
    return Expanded(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(beginOffset_1, beginOffset_2),
              end: Offset(0, 0),
            ).animate(
              CurvedAnimation(
                curve: Interval(
                  intervalBegin,
                  intervalEnd,
                  curve: Curves.easeOutCubic,
                ),
                parent: animation,
              ),
            ),
            child: child,
          );
        },
        child: Container(
          color: containerColor,
        ),
      ),
    );
  }
}
