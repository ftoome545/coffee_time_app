import 'package:coffee_time/features/delivery/presentation/widgets/delivery_view_body.dart';
import 'package:flutter/material.dart';

class DeliveryView extends StatelessWidget {
  const DeliveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: DeliveryViewBody(),
    );
  }
}
