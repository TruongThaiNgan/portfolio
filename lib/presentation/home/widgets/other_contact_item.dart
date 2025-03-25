import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:url_launcher/url_launcher.dart';

class OtherContactItemWidget extends StatefulWidget {
  const OtherContactItemWidget({
    super.key,
    this.isLast = false,
    required this.item,
  });

  final OtherContactItem item;
  final bool isLast;

  @override
  State<OtherContactItemWidget> createState() => _OtherContactItemState();
}

class _OtherContactItemState extends State<OtherContactItemWidget> {
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
        onTap: () {
          try {
            Uri url = Uri.parse(widget.item.content);

            launchUrl(url);
          } catch (e) {
            // AlertDialog.adaptive()
          }
        },
        child: Container(
          margin: EdgeInsets.only(right: widget.isLast ? 0 : 8),
          width: 15,
          height: 15,
          child: widget.item.image.image(
              color: isHovering ? AppColors.white : AppColors.secondaryText),
        ),
      ),
    );
  }
}
