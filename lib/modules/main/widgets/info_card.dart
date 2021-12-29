import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_app/config/size_config.dart';
import 'package:tesla_app/constants/app_asset.dart';
import 'package:tesla_app/constants/app_colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.status,
  }) : super(key: key);

  final String title;
  final String value;
  final bool status;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        height: double.infinity,
        width: size.width * 0.35,
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.02,
          vertical: size.height * 0.02,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: size.height * 0.02,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
              title != 'Climate' ? AppImages.mask : AppImages.mask1,
            ),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(7, 7),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color.fromRGBO(38, 46, 50, 1),
              offset: Offset(-7, -7),
              blurRadius: 5,
            ),
          ],
          gradient: const LinearGradient(
              begin: Alignment(0.46777546405792236, 0.5322245359420776),
              end: Alignment(-0.5322245359420776, 0.5322245359420776),
              colors: [
                Color.fromRGBO(30, 35, 40, 1),
                Color.fromRGBO(25, 28, 30, 1)
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: status ? AppColors.primary : Colors.transparent,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: SizeConfig.textMultiplier * 1.9,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Text(
                  value,
                  style: GoogleFonts.lato(
                    color: AppColors.secondarylight1,
                    fontSize: SizeConfig.textMultiplier * 1.9,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
