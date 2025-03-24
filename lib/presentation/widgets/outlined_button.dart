import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class XOutlinedButton extends StatelessWidget {
  const XOutlinedButton({
    this.onPressed,
    this.title,
    this.child,
    this.icon,
    this.busy = false,
    this.enabled = true,
    // this.size,
    super.key,
  });

  final bool busy;
  final Widget? icon;
  final bool enabled;
  final String? title;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // final size = this.size ?? ButtonSize.medium();
    final onPressed = enabled
        ? () {
            if (this.onPressed != null || busy == false) {
              this.onPressed?.call();
            }
          }
        : null;
    final foregroundColor =
        enabled ? AppColors.primary : AppColors.secondaryText;
    const indicator = CircularProgressIndicator();
    // XIndicator(radius: size.iconSize / 2, color: foregroundColor);

    return SizedBox(
      // height: size.height,
      child: OutlinedButtonTheme(
        data: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: foregroundColor,
            side: BorderSide(
              color: foregroundColor,
            ),
            // textStyle: size.style.copyWith(),
            // minimumSize: Size(size.minWidth, size.height),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
        ),
        child: icon != null
            ? OutlinedButton.icon(
                onPressed: onPressed,
                label: child ??
                    Text(
                      title ?? '',
                      style: TextStyle(color: foregroundColor),
                    ),
                icon: busy
                    ? indicator
                    : IconTheme(
                        data: IconThemeData(
                          // size: size.iconSize,
                          color: foregroundColor,
                        ),
                        child: icon!,
                      ),
              )
            : OutlinedButton(
                onPressed: onPressed,
                child: busy ? indicator : (child ?? Text(title ?? '')),
              ),
      ),
    );
  }
}
