import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? height;
  final double? width;
  final double? borderRadius;

  const CustomContainer(
      {Key? key,
      this.color,
      this.height,
      this.width,
      this.borderRadius,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: color,
        ),
        child: child);
  }
}
