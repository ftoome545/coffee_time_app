import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/utils/app_images.dart';

class DeliveryOrPickupMap extends StatefulWidget {
  const DeliveryOrPickupMap({super.key});

  @override
  State<DeliveryOrPickupMap> createState() => _DeliveryOrPickupMapState();
}

class _DeliveryOrPickupMapState extends State<DeliveryOrPickupMap> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
          initialCenter: LatLng(21.437273, 40.512714),
          initialZoom: 10.5,
          interactionOptions: InteractionOptions(
            flags: ~InteractiveFlag.doubleTapZoom,
            // debugMultiFingerGestureWinner: true,
          )),
      children: [
        openStreetMapTileLayer,
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(21.255362358762785, 40.422764760841744),
              height: 60,
              width: 60,
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                Assets.imagesDeliveryLocationIcon,
              ),
            ),
            Marker(
              point: LatLng(21.28218865901574, 40.44480259946733),
              height: 40,
              width: 40,
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3FB8B8B8),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Image.asset(Assets.imagesDeliveryMan),
              ),
            )
          ],
        )
      ],
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'com.example.coffee_time',
    );
