import 'package:flutter/material.dart';

class PaymentSummarySection extends StatelessWidget {
  const PaymentSummarySection({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: TextStyle(
            color: const Color(0xFF242424),
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text(
              'Price',
              style: TextStyle(
                color: const Color(0xFF303030),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            Spacer(),
            Text(
              '\$ ${price.toStringAsFixed(2)}',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Delivery Fee',
              style: TextStyle(
                color: const Color(0xFF303030),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            Spacer(),
            Text(
              '\$ 2.0',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF2A2A2A),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.lineThrough,
                height: 1.50,
              ),
            ),
            SizedBox(width: 8),
            Text(
              '\$ 1.0',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
