import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'custom_container.dart';

// ignore: must_be_immutable
class CustomCategoryCard extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? height;
  final double? width;
  final String? url;
  final String? title;
  bool? colorSelected = true;

  CustomCategoryCard(
      {Key? key,
      this.color,
      this.height,
      this.width,
      this.child,
      this.url,
      this.title,
      this.colorSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 250,
      height: height ?? 50,
      child: ListTile(
        contentPadding: const EdgeInsets.all(5),
        tileColor: color,
        title: Text(title!),
        leading: CustomContainer(
          borderRadius: 15,
          height: context.height * 0.2,
          width: context.width * 0.14,
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              url!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
