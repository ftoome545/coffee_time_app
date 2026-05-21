import 'package:flutter/material.dart';
import 'delivery_status_panel_body.dart';

class DeliveryStatusPanel extends StatelessWidget {
  const DeliveryStatusPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.45,
        minChildSize: 0.2,
        maxChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            height: 322,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                )
              ],
            ),
            child: DeliveryStatusPanelBody(scrollController: scrollController),
          );
        });
  }
}
