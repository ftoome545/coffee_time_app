import 'package:flutter/material.dart';
import 'driver_and_user_delivery_sections.dart';

class DeliveryStatusPanelBody extends StatelessWidget {
  const DeliveryStatusPanelBody({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        key: const ValueKey('panel_content'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 5,
              decoration: ShapeDecoration(
                color: const Color(0xFFE3E3E3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '10 minutes left',
              style: TextStyle(
                color: const Color(0xFF242424),
                fontSize: 16,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                height: 1.50,
              ),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Delivery to ',
                    style: TextStyle(
                      color: const Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: 'Jl. Kpg Sutoyo',
                    style: TextStyle(
                      color: const Color(0xFF2A2A2A),
                      fontSize: 12,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: _buildProgressBarStep(isActive: true)),
                const SizedBox(width: 10),
                Expanded(child: _buildProgressBarStep(isActive: true)),
                const SizedBox(width: 10),
                Expanded(child: _buildProgressBarStep(isActive: true)),
                const SizedBox(width: 10),
                Expanded(child: _buildProgressBarStep(isActive: false)),
              ],
            ),
            const SizedBox(height: 16),
            UserDeliveryStatusSection(),
            const SizedBox(height: 16),
            DeliveryDriverSection(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Container _buildProgressBarStep({required bool isActive}) {
    return Container(
      height: 4,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF35C07D) : const Color(0xFFE3E3E3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
