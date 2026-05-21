import 'package:coffee_time/features/delivery/presentation/widgets/custom_appbar_for_delivery.dart';
import 'package:flutter/material.dart';
import 'delivery_or_pickup_map.dart';
import 'delivery_status_panel.dart';

class DeliveryViewBody extends StatelessWidget {
  const DeliveryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned.fill(child: DeliveryOrPickupMap()),
          CustomAppBarForDelivery(),
          Positioned(
            child: DeliveryStatusPanel(),
          ),
        ],
      ),
    );
  }
}
