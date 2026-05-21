import 'package:flutter/material.dart';

class CoffeeSize extends StatefulWidget {
  const CoffeeSize({super.key});

  @override
  State<CoffeeSize> createState() => _CoffeeSizeState();
}

class _CoffeeSizeState extends State<CoffeeSize> {
  int _selectedCoffeeSizeIndex = 0;
  final List<String> items = [
    'S',
    'M',
    'L',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(
            color: const Color(0xFF242424),
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: List.generate(items.length, (index) {
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: index == items.length - 1 ? 0 : 16.0,
                ),
                child: SizedBox(
                  height: 41,
                  child: coffeeSizeOption(
                    () {
                      setState(() {
                        _selectedCoffeeSizeIndex = index;
                      });
                    },
                    items[index],
                    index == _selectedCoffeeSizeIndex,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget coffeeSizeOption(
      void Function()? onTap, String size, bool isSelected) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 41,
        decoration: ShapeDecoration(
          color: isSelected ? const Color(0xffF9F2ED) : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: isSelected
                  ? const Color(0xffC67C4E)
                  : const Color(0xFFE3E3E3),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              size,
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 14,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
