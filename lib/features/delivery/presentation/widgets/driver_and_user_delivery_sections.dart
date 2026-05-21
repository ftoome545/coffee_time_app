import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class UserDeliveryStatusSection extends StatelessWidget {
  const UserDeliveryStatusSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFE3E3E3),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFE3E3E3),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Image.asset(
                Assets.imagesDeliveryMan,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  'Delivered your order',
                  style: TextStyle(
                    color: const Color(0xFF242424),
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
                SizedBox(
                  width: 243,
                  child: Text(
                    'We will deliver your goods to you in\nthe shortes possible time.',
                    style: TextStyle(
                      color: const Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w300,
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DeliveryDriverSection extends StatelessWidget {
  const DeliveryDriverSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          // side: BorderSide(
          //   width: 1,
          //   color: const Color(0xFFE3E3E3),
          // ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(Assets.imagesDeliveryDriverImage)),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                'Brooklyn Simmons',
                style: TextStyle(
                  color: const Color(0xFF242424),
                  fontSize: 14,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                  height: 1.50,
                ),
              ),
              Text(
                'Personal Courier',
                style: TextStyle(
                  color: const Color(0xFFA2A2A2),
                  fontSize: 12,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w400,
                  height: 1.20,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: const Color(0xFFE3E3E3),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(Assets.imagesPhoneIcon),
            ),
          ),
        ],
      ),
    );
  }
}
