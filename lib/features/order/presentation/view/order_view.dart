import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/entities/product_entity.dart';
import '../widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key, required this.product});
  final CoffeeProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Order',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF242424),
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/images/back_icon.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: OrderViewBody(
        product: product,
      ),
    );
  }
}
