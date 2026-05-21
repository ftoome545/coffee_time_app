import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddressAndNoteContainersUI extends StatelessWidget {
  const AddressAndNoteContainersUI({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final String icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: const Color(0xFFA2A2A2),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 4),
            Text(
              text,
              style: TextStyle(
                color: const Color(0xFF303030),
                fontSize: 12,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400,
                height: 1.20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
