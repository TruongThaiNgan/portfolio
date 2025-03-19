import 'package:flutter/material.dart';

class CustomGridView<T> extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.items,
    required this.builder,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.crossAxisCount = 2,
    this.shrinkWrap = true,
  });

  final List<T> items;
  final Widget Function(T item) builder;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final int crossAxisCount;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    final int rowLength = (items.length / crossAxisCount).ceil();

    return ListView.builder(
      shrinkWrap: shrinkWrap,
      itemCount: rowLength,
      itemBuilder: (context, index) {
        int firstIndex = index * crossAxisCount;
        bool hasPadding = index < rowLength - 1;
        return IntrinsicHeight(
          child: Container(
            padding: EdgeInsets.only(bottom: hasPadding ? mainAxisSpacing : 0),
            child: Row(
              spacing: crossAxisSpacing,
              children: List.generate(
                crossAxisCount,
                (i) {
                  int itemIndex = firstIndex + i;

                  if (itemIndex < items.length) {
                    return Expanded(child: builder(items[itemIndex]));
                  }

                  return const Expanded(child: SizedBox());
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
