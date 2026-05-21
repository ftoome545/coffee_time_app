import 'package:coffee_time/core/utils/app_images.dart';
import 'package:coffee_time/features/home/presentation/widgets/coffee_product_card.dart';
import 'package:coffee_time/features/home/presentation/widgets/search_bar_and_banner.dart';
import 'package:flutter/material.dart';

import 'coffee_product_details.dart';

class CoffeeProduct {
  final String name;
  final String category;
  final String subtitle;
  final double price;
  final String imagePath;

  const CoffeeProduct({
    required this.name,
    required this.category,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  });
}

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedCoffeeIndex = 0;
  final List<String> items = [
    'All Coffee',
    'Machiato',
    'Latte',
    'Americano',
  ];

  final List<CoffeeProduct> products = const [
    CoffeeProduct(
      name: 'Caramel Macchiato',
      category: 'Machiato',
      subtitle: 'Sweet and creamy',
      price: 5.50,
      imagePath: 'assets/images/caffe_mocha.png',
    ),
    CoffeeProduct(
      name: 'Vanilla Latte',
      category: 'Latte',
      subtitle: 'Smooth vanilla flavor',
      price: 4.95,
      imagePath: Assets.imagesFlatWhite,
    ),
    CoffeeProduct(
      name: 'Classic Americano',
      category: 'Americano',
      subtitle: 'Bold and strong',
      price: 3.75,
      imagePath: Assets.imagesCaffePanna,
    ),
    CoffeeProduct(
      name: 'Hazelnut Latte',
      category: 'Latte',
      subtitle: 'Nutty and warm',
      price: 5.20,
      imagePath: Assets.imagesMochaFusi,
    ),
    CoffeeProduct(
      name: 'Iced Americano',
      category: 'Americano',
      subtitle: 'Refreshing cold brew',
      price: 4.20,
      imagePath: Assets.imagesCaffeMocha,
    ),
    CoffeeProduct(
      name: 'Espresso Machiato',
      category: 'Machiato',
      subtitle: 'Rich espresso shot',
      price: 4.30,
      imagePath: Assets.imagesFlatWhite,
    ),
  ];

  List<CoffeeProduct> get filteredProducts {
    if (_selectedCoffeeIndex == 0) {
      return products;
    }
    final selectedCategory = items[_selectedCoffeeIndex];
    return products
        .where((product) => product.category == selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SearchBarAndBanner(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final bool isSelected = _selectedCoffeeIndex == index;
                  return Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: ChoiceChip(
                      label: Text(items[index]),
                      selected: isSelected,
                      showCheckmark: false,
                      selectedColor: const Color(0xffC67C4E),
                      backgroundColor: const Color(0xffF5F5F5),
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:
                            isSelected ? Colors.white : const Color(0xff313131),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: isSelected
                            ? BorderSide.none
                            : const BorderSide(
                                width: 1, color: Colors.transparent),
                      ),
                      onSelected: (value) {
                        setState(() {
                          _selectedCoffeeIndex = index;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final product = filteredProducts[index];
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CoffeeProductDetails(product: product),
                        ),
                      );
                    },
                    child: CoffeeProductCard(product: product));
              },
              childCount: filteredProducts.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 15,
              childAspectRatio: 156 / 256,
            ),
          ),
        ),
      ],
    );
  }
}
