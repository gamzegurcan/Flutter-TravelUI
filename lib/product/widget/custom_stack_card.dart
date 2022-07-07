import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'custom_container.dart';

// ignore: must_be_immutable
class CustomStackCard extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? height;
  final double? width;
  final String? url;
  final String? title;
  final String? text2;

  const CustomStackCard(
      {Key? key,
      this.color,
      this.height,
      this.width,
      this.child,
      this.url,
      this.title,
      this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: height,
      width: width,
      borderRadius: 10,
      color: Colors.white,
      child: Column(
        children: [
          context.emptySizedHeightBoxLow,
          SizedBox(
            height: context.height * 0.12,
            width: context.width * 0.3,
            child: Stack(
              children: [
                CustomContainer(
                  height: context.height * 0.2,
                  width: context.width * 0.3,
                  borderRadius: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      url!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: context.height * 0.07,
                  left: context.height * 0.12,
                  right: context.height * 0.01,
                  child: CustomContainer(
                      height: context.height * 0.05,
                      width: context.width * 0.05,
                      borderRadius: 30,
                      color: Colors.red,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: color,
                      )),
                )
              ],
            ),
          ),
          Text(title!),
          context.emptySizedHeightBoxLow,
          Text(text2!)
        ],
      ),
    );
  }
}
