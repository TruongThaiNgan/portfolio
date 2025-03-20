import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class XInput extends StatefulWidget {
  const XInput({
    required this.value,
    super.key,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.decoration,
    this.textAlign = TextAlign.left,
    this.style,
    this.maxLength,
    this.maxLines,
    this.autofocus = false,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.labelText,
  });
  final String value;
  final TextInputType? keyboardType;
  final bool obscureText;

  final ValueChanged<String>? onChanged;
  final InputDecoration? decoration;
  final int? maxLength;
  final int? maxLines;
  final bool autofocus;
  final String? labelText;
  // style
  final TextAlign textAlign;
  final TextStyle? style;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onFieldSubmitted;

  @override
  State<XInput> createState() => _XInputState();
}

class _XInputState extends State<XInput> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;
  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
    _controller = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(XInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_controller.text != widget.value) {
      _controller.text = widget.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 1,
      ),
    );

    return TextFormField(
      controller: _controller,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      style: widget.style,
      textAlign: widget.textAlign,
      obscureText: obscureText,
      cursorColor: AppColors.white,
      maxLength: widget.maxLength,
      autofocus: widget.autofocus,
      scrollPhysics: const NeverScrollableScrollPhysics(),
      inputFormatters: widget.inputFormatters,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: (widget.decoration ?? const InputDecoration()).copyWith(
        alignLabelWithHint: true,
        labelText: widget.labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        focusedBorder: focusedBorder,
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          borderSide: BorderSide(
            color: AppColors.error,
            width: 1,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        prefixIcon: widget.textAlign == TextAlign.center
            ? const SizedBox(width: 24)
            : null,
        floatingLabelStyle: const TextStyle(
          color: AppColors.primary,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: false,
        errorStyle: const TextStyle(fontSize: 14, letterSpacing: 0.25),
      ),
    );
  }
}
