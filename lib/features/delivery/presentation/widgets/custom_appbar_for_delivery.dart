import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class CustomAppBarForDelivery extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarForDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.transparent,
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
                      color: const Color(0xFFEDEDED),
                      shape: RoundedRectangleBorder(
                        // side: const BorderSide(
                        //   width: 1,
                        //   color: Colors.transparent,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: SvgPicture.asset(Assets.imagesBackIcon)),
              ),
              const Spacer(),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEDEDED),
                      shape: RoundedRectangleBorder(
                        // side: const BorderSide(
                        //   width: 1,
                        //   color: Colors.transparent,
                        // ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: SvgPicture.asset(Assets.imagesGpsIcon)),
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
