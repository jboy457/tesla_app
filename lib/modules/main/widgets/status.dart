import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_app/config/size_config.dart';
import 'package:tesla_app/constants/app_colors.dart';

class Status extends StatelessWidget {
  const Status({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: GoogleFonts.lato(
              color: AppColors.secondarylight1,
              fontSize: SizeConfig.textMultiplier * 1.8,
            ),
            children: [
              WidgetSpan(
                child: Icon(
                  icon,
                  size: SizeConfig.imageSizeMultiplier * 5,
                  color: AppColors.secondarylight1,
                ),
              ),
              TextSpan(
                text: title,
              )
            ],
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          value,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: SizeConfig.textMultiplier * 1.8,
          ),
        )
      ],
    );
  }
}
