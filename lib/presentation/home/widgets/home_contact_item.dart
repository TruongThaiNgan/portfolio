import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';

class HomeContactItem extends StatelessWidget {
  const HomeContactItem({
    super.key,
    required this.item,
    this.isLast = false,
  });

  final HomeContact item;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: isLast ? 0 : 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _icon(),
          Flexible(
            flex: 1,
            child: _contact(),
          ),
        ],
      ),
    );
  }

  Widget _icon() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Icon(
        item.getIcon(),
        color: AppColors.primaryColor,
      ),
    );
  }

  Widget _contact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name.toUpperCase(),
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.secondaryTextColor,
          ),
        ),
        Text(
          item.getContent(),
          style: const TextStyle(fontSize: 12),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
