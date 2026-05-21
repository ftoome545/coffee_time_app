import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';

class CashOrWalletSection extends StatelessWidget {
  const CashOrWalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesWalletIcon),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cash/Wallet',
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.20,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '\$ 5.53',
              style: TextStyle(
                color: const Color(0xFFC67C4E),
                fontSize: 12,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ],
        ),
        Spacer(),
        SvgPicture.asset(
          Assets.imagesDownIcon,
          colorFilter:
              ColorFilter.mode(const Color(0xFF2A2A2A), BlendMode.srcIn),
          height: 24,
        ),
      ],
    );
  }
}
