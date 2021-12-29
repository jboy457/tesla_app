import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_app/config/size_config.dart';
import 'package:tesla_app/constants/app_asset.dart';
import 'package:tesla_app/constants/app_colors.dart';
import 'package:tesla_app/constants/widgets/app_button.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 5,
          width: size.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.secondaryDark,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.5,
              // height: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'A/C is ON',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: SizeConfig.textMultiplier * 2.4,
                      ),
                    ),
                    Text(
                      'Tap to turn of or swipe up for fast setup',
                      style: GoogleFonts.lato(
                        color: AppColors.secondarylight1,
                        fontSize: SizeConfig.textMultiplier * 1.8,
                      ),
                    )
                  ]),
            ),
            PrimaryButton(
              height: 70,
              width: 70,
              onpressed: () {},
              padding: 23,
              icon: AppIcons.power,
            )
          ],
        )
      ],
    );
  }
}
