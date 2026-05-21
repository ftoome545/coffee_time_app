import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';
import 'home_view_body.dart';

class CoffeeFeaturesIcons extends StatelessWidget {
  const CoffeeFeaturesIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
              color: Color(0xffF5F5F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: Image.asset(
              Assets.imagesDeliveryIcon,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          decoration: ShapeDecoration(
              color: Color(0xffF5F5F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Image.asset(
              Assets.imagesCoffeeBeansIcon,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          decoration: ShapeDecoration(
              color: Color(0xffF5F5F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Image.asset(
              Assets.imagesMilkIcon,
            ),
          ),
        ),
      ],
    );
  }
}

class NameTypeRating extends StatelessWidget {
  const NameTypeRating({
    super.key,
    required this.product,
  });

  final CoffeeProduct product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff2A2A2A),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Ice/Hot',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffA2A2A2),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            SvgPicture.asset(
              Assets.imagesStarIcon,
              height: 20,
              width: 20,
            ),
            SizedBox(width: 4),
            Text(
              '4.8',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff242424),
              ),
            ),
            Text(
              ' (128)',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffA2A2A2),
              ),
            )
          ],
        ),
      ],
    );
  }
}
