import 'package:flutter/widgets.dart';

class CoffeeDetailDescription extends StatelessWidget {
  const CoffeeDetailDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff242424),
          ),
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xffA2A2A2),
              ),
            ),
            TextSpan(
              text: 'Read More',
              style: TextStyle(
                color: const Color(0xFFC67C4E),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
