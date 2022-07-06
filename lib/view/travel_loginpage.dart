import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travel/core/custom_elevated_button.dart';

class TravelLogin extends StatelessWidget {
  const TravelLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String url =
        'https://images.unsplash.com/photo-1494949360228-4e9bde560065?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';
    return Scaffold(
      body: _body(context, url),
    );
  }
}

Widget _body(BuildContext context, url) => myStack(context, url);

Stack myStack(BuildContext context, url) {
  return Stack(
    children: [
      Container(
        height: context.dynamicHeight(1),
        width: context.dynamicWidth(1),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      ),
      Positioned(
        left: context.highValue,
        top: context.normalValue,
        right: context.highValue,
        child: Column(
          children: [
            SizedBox(
              height: context.dynamicHeight(0.1),
            ),
            const Text("Gamze Tatilde",
                style: TextStyle(color: Colors.white, fontSize: 35)),
            context.emptySizedHeightBoxHigh,
            context.emptySizedHeightBoxHigh,
            context.emptySizedHeightBoxHigh,
            context.emptySizedHeightBoxHigh,
            myCard(context),
          ],
        ),
      ),
    ],
  );
}

SizedBox myCard(BuildContext context) {
  return SizedBox(
    height: context.dynamicHeight(0.40),
    width: context.dynamicWidth(0.9),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.black87,
      child: cardColumn(context),
    ),
  );
}

Column cardColumn(BuildContext context) {
  return Column(
    children: [
      context.emptySizedHeightBoxNormal,
      const Text(
        "Paramız Yok Gidemiyoz",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      context.emptySizedHeightBoxLow3x,
      const Text(
        "Lay lay lay",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      context.emptySizedHeightBoxNormal,
      CustomElevatedButton(
        width: context.dynamicWidth(0.5),
        height: context.dynamicHeight(0.07),
        color: Colors.white,
        borderRadius: 30,
        child: const Text(
          "Tatile git",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      context.emptySizedHeightBoxLow3x,
      textButton(context)
    ],
  );
}

TextButton textButton(BuildContext context) {
  return TextButton(
    onPressed: null,
    child: Column(
      children: [
        const Text(
          "Gidemiyoz",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          child: const Divider(
            color: Colors.white,
            thickness: 0.8,
            // indent: context.dynamicWidth(0.2),
            // endIndent: context.dynamicWidth(0.2),
            height: 10,
          ),
          width: context.dynamicWidth(0.1),
        )
      ],
    ),
  );
}
