import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFEDEDED),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesDiscountIcon),
          SizedBox(width: 16),
          Text(
            '1 Discount is Applies',
            style: TextStyle(
              color: const Color(0xFF303030),
              fontSize: 14,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
              height: 1.50,
            ),
          ),
          Spacer(),
          SvgPicture.asset(Assets.imagesNextIcon),
        ],
      ),
    );
  }
}
