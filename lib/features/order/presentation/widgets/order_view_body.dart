import 'package:coffee_time/features/order/presentation/widgets/order_section.dart';
import 'package:coffee_time/shared/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/entities/product_entity.dart';
import '../../../delivery/presentation/view/delivery_view.dart';
import 'cash_or_wallet_section.dart';
import 'delivery_address_section.dart';
import 'delivery_and_pickup_section.dart';
import 'discount_section.dart';
import 'payment_summary_section.dart';

class OrderViewBody extends StatefulWidget {
  const OrderViewBody({super.key, required this.product});
  final CoffeeProductEntity product;
  @override
  State<OrderViewBody> createState() => _OrderViewBodyState();
}

class _OrderViewBodyState extends State<OrderViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: DeliveryAndPickupSection(),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: DeliveryAddressSection(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Divider(
              height: 32,
              thickness: 1,
              color: const Color(0xFFE3E3E3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: OrderSection(product: widget.product),
          ),
          Divider(
            thickness: 4,
            height: 32,
            color: const Color(0xFFF9F2ED),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: DiscountSection(),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: PaymentSummarySection(price: widget.product.price),
          ),
          SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CashOrWalletSection(),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomButton(
                text: 'Order',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DeliveryView()));
                }),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
