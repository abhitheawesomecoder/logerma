import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    this.isActive,
    this.duration,
  }) : super(key: key);
  final bool? isActive;
  final Duration? duration;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 10),
      duration: duration!,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive! ? const Color(0xFF0868F8) : Colors.transparent,
        border: Border.all(
          color: isActive! ? const Color(0xFF0868F8) : const Color(0xFF0868F8),
          width: 1.4,
        ),
      ),
    );
  }
}
