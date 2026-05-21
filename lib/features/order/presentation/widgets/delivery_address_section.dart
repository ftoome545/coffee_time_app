import 'package:flutter/widgets.dart';

import '../../../../core/utils/app_images.dart';
import 'address_and_note_containers_ui.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Address',
          style: TextStyle(
            color: const Color(0xFF242424),
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Jl. Kpg Sutoyo',
          style: TextStyle(
            color: const Color(0xFF303030),
            fontSize: 14,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            height: 1.50,
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
          style: TextStyle(
            color: const Color(0xFFA2A2A2),
            fontSize: 12,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            AddressAndNoteContainersUI(
              icon: Assets.imagesEditIcon,
              text: 'Edit Address',
              onTap: () {
                // Handle edit address tap
              },
            ),
            SizedBox(width: 8),
            AddressAndNoteContainersUI(
              icon: Assets.imagesNoteIcon,
              text: 'Add Note',
              onTap: () {
                // Handle add note tap
              },
            ),
          ],
        ),
      ],
    );
  }
}
