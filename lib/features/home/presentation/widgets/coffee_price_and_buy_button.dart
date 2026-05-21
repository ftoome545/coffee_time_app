import 'package:flutter/material.dart';
import '../../../../shared/custom_button.dart';
import '../../../order/presentation/view/order_view.dart';

class CoffePriceAndBuyButton extends StatelessWidget {
  const CoffePriceAndBuyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: TextStyle(
                color: const Color(0xFF909090),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 1.20,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '\$ 4.53',
              style: TextStyle(
                color: const Color(0xFFC67C4E),
                fontSize: 18,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ],
        ),
        const SizedBox(width: 34),
        Expanded(
          child: CustomButton(
              text: 'Buy Now',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const OrderView()));
              }),
        ),
      ],
    );
  }
}
