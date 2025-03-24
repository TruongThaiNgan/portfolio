import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class OtherContactItem extends StatefulWidget {
  const OtherContactItem({
    super.key,
    required this.icon,
    this.isLast = false,
  });

  final AssetGenImage? icon;
  final bool isLast;

  @override
  State<OtherContactItem> createState() => _OtherContactItemState();
}

class _OtherContactItemState extends State<OtherContactItem> {
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
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: widget.isLast ? 0 : 8),
          width: 15,
          height: 15,
          child: widget.icon?.image(
              color: isHovering ? AppColors.white : AppColors.secondaryText),
        ),
      ),
    );
  }
}
