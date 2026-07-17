import 'package:coffee_time/core/entities/product_entity.dart';

import '../utils/app_images.dart';

CoffeeProductEntity getDummyCoffeeProduct() {
  return const CoffeeProductEntity(
    id: '1',
    name: 'Caramel Macchiato',
    category: 'Machiato',
    subtitle: 'Sweet and creamy',
    price: 5.50,
    imagePath: 'assets/images/caffe_mocha.png',
  );
}

List<CoffeeProductEntity> getDummyCoffeeProducts() {
  return const [
    CoffeeProductEntity(
      id: '1',
      name: 'Caramel Macchiato',
      category: 'Machiato',
      subtitle: 'Sweet and creamy',
      price: 5.50,
      imagePath: Assets.imagesCaffeMocha,
    ),
    CoffeeProductEntity(
      id: '2',
      name: 'Vanilla Latte',
      category: 'Latte',
      subtitle: 'Smooth vanilla flavor',
      price: 4.95,
      imagePath: Assets.imagesFlatWhite,
    ),
    CoffeeProductEntity(
      id: '3',
      name: 'Classic Americano',
      category: 'Americano',
      subtitle: 'Bold and strong',
      price: 3.75,
      imagePath: Assets.imagesCaffePanna,
    ),
    CoffeeProductEntity(
      id: '4',
      name: 'Hazelnut Latte',
      category: 'Latte',
      subtitle: 'Nutty and warm',
      price: 5.20,
      imagePath: Assets.imagesMochaFusi,
    ),
    CoffeeProductEntity(
      id: '5',
      name: 'Iced Americano',
      category: 'Americano',
      subtitle: 'Refreshing cold brew',
      price: 4.20,
      imagePath: Assets.imagesCaffeMocha,
    ),
    CoffeeProductEntity(
      id: '6',
      name: 'Espresso Machiato',
      category: 'Machiato',
      subtitle: 'Rich espresso shot',
      price: 4.30,
      imagePath: Assets.imagesFlatWhite,
    ),
  ];
}
