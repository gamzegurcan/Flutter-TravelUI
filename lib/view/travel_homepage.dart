import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travel/core/constants/app_text.dart';
import 'package:travel/core/constants/image_urls.dart';
import 'package:travel/product/widget/custom_category_card.dart';
import 'package:travel/product/widget/custom_container.dart';
import 'package:travel/product/widget/custom_stack_card.dart';

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: _body(context),
    );
  }
}

Widget _body(BuildContext context) => SizedBox(
      height: context.dynamicHeight(1),
      width: context.dynamicWidth(1),
      child: Column(
        children: [
          context.emptySizedHeightBoxLow3x,
          Padding(padding: context.paddingLow),
          topRow(context),
          context.emptySizedHeightBoxLow3x,
          Padding(
            padding: context.paddingLow,
            child: categories(context),
          ),
          context.emptySizedHeightBoxLow,
          Padding(
            padding: context.paddingMedium,
            child: midText(context),
          ),
          context.emptySizedHeightBoxLow,
          Padding(
            padding: context.paddingLow,
            child: gridList(context),
          )
        ],
      ),
    );

Row topRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CustomContainer(
        height: context.height * 0.07,
        width: context.width * 0.14,
        color: Colors.white,
        borderRadius: 10,
        child: const Icon(Icons.category),
      ),
      Column(
        children: [
          const Text(AppText.title),
          Text(
            AppText.subTitle,
            style: context.textTheme.headline6,
          )
        ],
      ),
      CustomContainer(
        height: context.height * 0.06,
        width: context.width * 0.1,
        color: Colors.white,
        borderRadius: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            ImageUrl.person,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

SizedBox categories(BuildContext context) {
  return SizedBox(
    height: context.height * 0.3,
    width: context.width * 0.9,
    child: Column(
      children: [
        categoriesRow(
          context,
          ImageUrl.hotel,
          ImageUrl.ticket,
          Colors.white,
          Colors.blue,
          AppText.hotel,
          AppText.holiday,
        ),
        context.emptySizedHeightBoxLow,
        categoriesRow(
          context,
          ImageUrl.taxi,
          ImageUrl.trees,
          Colors.white,
          Colors.white,
          AppText.taxi,
          AppText.ticket,
        ),
        context.emptySizedHeightBoxLow,
        categoriesRow(
          context,
          ImageUrl.hotel,
          ImageUrl.trees,
          Colors.white,
          Colors.white,
          AppText.hotel,
          AppText.holiday,
        ),
      ],
    ),
  );
}

Row categoriesRow(
    BuildContext context, url1, url2, color1, color2, text1, text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CustomCategoryCard(
        height: context.height * 0.07,
        width: context.width * 0.4,
        url: url1,
        title: text1,
        color: color1,
      ),
      CustomCategoryCard(
        height: context.height * 0.07,
        width: context.width * 0.4,
        url: url2,
        title: text2,
        color: color2,
      ),
    ],
  );
}

Row midText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        AppText.midTitle,
        style: context.textTheme.headline6,
      ),
      const Text(
        AppText.view,
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}

SizedBox gridList(BuildContext context) {
  return SizedBox(
    height: context.height * 0.35,
    width: context.width * 0.8,
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        List? reversedText = AppText.myText.reversed.toList();
        return CustomStackCard(
          height: context.height * 0.15,
          width: context.width * 0.25,
          url: ImageUrl.myImages[index],
          text2: AppText.myText[index],
          title: reversedText[index],
          color: Colors.white,
        );
      },
    ),
  );
}
