import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 11,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: SvgPicture.asset(Assets.imagesBackIcon)),
              ),
              const Spacer(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF242424),
                  fontSize: 16,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                  height: 1.20,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: SvgPicture.asset(Assets.imagesFavoriteCoffeeIcon)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
