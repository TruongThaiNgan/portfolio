import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/utils/extension.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timeline_list/timeline_list.dart';

class TimelineHistory extends StatelessWidget {
  const TimelineHistory({super.key});

  @override
  Widget build(BuildContext context) {
    const List<HistoryEnum> myHistory = HistoryEnum.values;

    return LayoutBuilder(builder: (context, _) {
      ResponsiveBreakpointsData data = ResponsiveBreakpoints.of(context);
      if (data.equals(XResponsiveBreakpoint.medium.name) ||
          data.equals(XResponsiveBreakpoint.xSmall.name)) {
        return Timeline(
          properties: const TimelineProperties(
            lineWidth: 4,
            lineColor: AppColors.secondaryText,
            iconGap: 16,
            iconSize: 32,
            iconAlignment: MarkerIconAlignment.center,
          ),
          children: myHistory
              .mapIndexed((element, index) =>
                  _buildMaker(item: element.getItem(), isLeft: false))
              .toList(),
        );
      }
      return Timeline(
        properties: const TimelineProperties(
          timelinePosition: TimelinePosition.center,
          lineWidth: 4,
          lineColor: AppColors.secondaryText,
          iconGap: 16,
          iconSize: 32,
          iconAlignment: MarkerIconAlignment.center,
        ),
        children: myHistory
            .mapIndexed((element, index) =>
                _buildMaker(item: element.getItem(), isLeft: index.isEven))
            .toList(),
      );
    });
  }

  Marker _buildMaker({
    bool isLeft = true,
    required HistoryItem item,
  }) {
    return Marker(
      position: isLeft ? MarkerPosition.right : MarkerPosition.left,
      icon: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.secondaryText,
        ),
        padding: const EdgeInsets.all(4),
        child: item.icon,
      ),
      child: Column(
        crossAxisAlignment:
            isLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(item.time,
              style: AppStyles.body.copyWith(
                color: AppColors.secondaryText,
                fontStyle: FontStyle.italic,
              )),
          Text(
            item.title,
            style: AppStyles.titleSmall,
          ),
          Text(item.role),
          item.description ?? const SizedBox(),
        ],
      ),
    );
  }
}
