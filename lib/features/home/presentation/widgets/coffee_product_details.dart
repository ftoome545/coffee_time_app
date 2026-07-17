import 'package:flutter/material.dart';
import '../../../../core/entities/product_entity.dart';
import 'coffee_detail_description.dart';
import 'coffee_price_and_buy_button.dart';
import 'coffee_size.dart';
import 'custom_appbar.dart';
import 'detail_coffee_name_icons.dart';

class CoffeeProductDetails extends StatefulWidget {
  const CoffeeProductDetails({super.key, required this.product});
  final CoffeeProductEntity product;

  @override
  State<CoffeeProductDetails> createState() => _CoffeeProductDetailsState();
}

class _CoffeeProductDetailsState extends State<CoffeeProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Detail'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.product.imagePath,
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: NameTypeRating(product: widget.product),
                  ),
                  Expanded(
                    child: CoffeeFeaturesIcons(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: Color(0xffE3E3E3),
                  thickness: 1,
                ),
              ),
              const SizedBox(height: 16),
              const CoffeeDetailDescription(),
              const SizedBox(height: 24),
              const CoffeeSize(),
              const SizedBox(height: 40),
              CoffePriceAndBuyButton(product: widget.product),
              const SizedBox(height: 24)
            ],
          ),
        ),
      ),
    );
  }
}
