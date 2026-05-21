import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class OrderSection extends StatefulWidget {
  const OrderSection({super.key});

  @override
  State<OrderSection> createState() => _OrderSectionState();
}

class _OrderSectionState extends State<OrderSection> {
  int orderCount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            Assets.imagesCaffeMocha,
            fit: BoxFit.cover,
            height: 54,
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Caffe Mocha',
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 16,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Deep Foam',
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
        Spacer(),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                // Handle reduce quantity tap
                if (orderCount > 1) {
                  setState(() {
                    orderCount--;
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFFF9F2ED),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Icon(Icons.remove,
                    size: 16, color: const Color(0xFFA2A2A2)),
              ),
            ),
            SizedBox(width: 16),
            Text(
              '$orderCount',
              style: TextStyle(
                color: const Color(0xFF2A2A2A),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
            SizedBox(width: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  orderCount++;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFFF9F2ED),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child:
                    Icon(Icons.add, size: 16, color: const Color(0xFF2A2A2A)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
