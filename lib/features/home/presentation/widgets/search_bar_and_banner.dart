import 'package:coffee_time/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarAndBanner extends StatelessWidget {
  const SearchBarAndBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              // height: 280,
              decoration: BoxDecoration(color: Color(0xff313131)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Location',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA2A2A2)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          'Bilzen, Tanjungbalai',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffD8D8D8)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(Assets.imagesDownIcon))
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SearchBar(
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            leading: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: 'Search coffee',
                            hintStyle: WidgetStateProperty.all(TextStyle(
                                color: Color(0xffA2A2A2),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xff2A2A2A)),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 52,
                          padding: EdgeInsets.all(16),
                          decoration: ShapeDecoration(
                              color: Color(0xffC67C4E),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(16))),
                          child:
                              SvgPicture.asset(Assets.imagesSearchFilterIcon),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 102,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -70,
              left: 24,
              right: 24,
              child: Image.asset(
                Assets.imagesBannerPng,
                height: 140,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 80,
        )
      ],
    );
  }
}
