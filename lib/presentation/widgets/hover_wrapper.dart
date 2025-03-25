import 'package:flutter/material.dart';

class HoverWrapper extends StatefulWidget {
  const HoverWrapper({
    super.key,
    this.isLast = false,
    required this.builder,
  });

  final bool isLast;
  final Widget Function(bool) builder;

  @override
  State<HoverWrapper> createState() => _HoverWrapperItemState();
}

class _HoverWrapperItemState extends State<HoverWrapper> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovering = false;
        });
      },
      child: widget.builder(isHovering),
    );
  }
}
