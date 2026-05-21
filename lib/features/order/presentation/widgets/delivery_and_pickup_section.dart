import 'package:flutter/material.dart';
import 'delivery_and_pickup_button.dart';

enum OrderMethod { delivery, pickup }

class DeliveryAndPickupSection extends StatefulWidget {
  const DeliveryAndPickupSection({super.key});

  @override
  State<DeliveryAndPickupSection> createState() =>
      _DeliveryAndPickupSectionState();
}

class _DeliveryAndPickupSectionState extends State<DeliveryAndPickupSection> {
  OrderMethod _selectedMethod = OrderMethod.delivery;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: DeliveryAndPickupButton(
                text: 'Delivery',
                onPressed: () {
                  setState(() {
                    _selectedMethod = OrderMethod.delivery;
                  });
                },
                isSelected: _selectedMethod == OrderMethod.delivery,
              ),
            ),
            Expanded(
              child: DeliveryAndPickupButton(
                text: 'Pickup',
                onPressed: () {
                  setState(() {
                    _selectedMethod = OrderMethod.pickup;
                  });
                },
                isSelected: _selectedMethod == OrderMethod.pickup,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
