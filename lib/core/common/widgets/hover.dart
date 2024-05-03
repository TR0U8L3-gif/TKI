import 'package:flutter/material.dart';

class Hover extends StatelessWidget {
  const Hover({
    super.key,
    required this.hoverStatus,
    required this.onEnter,
    required this.onExit,
    required this.child,
    this.onTap,
  });

  final bool hoverStatus;
  final VoidCallback onEnter;
  final VoidCallback onExit;
  final void Function()? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: hoverStatus ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: (event) => onEnter(),
      onExit: (event) => onExit(),
      child: GestureDetector(
        onTap: onTap,
        onTapDown: (details) => onEnter(),
        onTapUp: (details) => onExit(),
        onTapCancel: onExit,
        child: child,
      ),
    );
  }
}
