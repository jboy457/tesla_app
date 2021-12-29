import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tesla_app/config/size_config.dart';
import 'package:tesla_app/constants/app_asset.dart';
import 'package:tesla_app/constants/app_colors.dart';
import 'package:tesla_app/constants/widgets/app_button.dart';
import 'package:tesla_app/modules/main/widgets/sheet_header.dart';

class DetailsSheet extends StatelessWidget {
  const DetailsSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SlidingUpPanel(
      minHeight: size.height * 0.15,
      maxHeight: size.height * 0.8,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
      collapsed: Container(
        padding: const EdgeInsets.all(20),
        width: size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: AppColors.secondaryDark,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.secondarylight,
                AppColors.secondaryDark,
              ]),
        ),
        child: const SheetHeader(),
      ),
      panel: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: AppColors.secondaryDark,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.secondarylight,
                AppColors.secondaryDark,
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SheetHeader(),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.secondarylight1,
                        blurRadius: 30,
                        spreadRadius: 1,
                        offset: Offset(-10, -10)),
                    BoxShadow(
                        color: AppColors.secondarylight,
                        blurRadius: 40,
                        spreadRadius: 1,
                        offset: Offset(-10, -10)),
                    BoxShadow(
                        color: AppColors.secondaryDark,
                        blurRadius: 20,
                        spreadRadius: 6,
                        offset: Offset(10, 10))
                  ]),
              child: CircularPercentIndicator(
                radius: size.width * 0.6,
                lineWidth: size.width * 0.1,
                startAngle: 180,
                animationDuration: 1200,
                animation: true,
                animateFromLastPercent: true,
                restartAnimation: true,
                backgroundColor: AppColors.secondaryDark,
                maskFilter: const MaskFilter.blur(BlurStyle.solid, 2.0),
                circularStrokeCap: CircularStrokeCap.round,
                rotateLinearGradient: true,
                linearGradient: const LinearGradient(colors: [
                  Color(0xFF005696),
                  Color(0xFF11A8FD),
                ]),
                percent: 0.65,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '27 °C',
                      style: GoogleFonts.alfaSlabOne(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.textMultiplier * 4,
                      ),
                    ),
                    Text(
                      'Cooling ...',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier * 2,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'Fan Speed',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: SizeConfig.textMultiplier * 2.4,
              ),
            ),
            SizedBox(
                height: size.height * 0.04,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1',
                          style: GoogleFonts.lato(
                            color: AppColors.secondarylight1,
                            fontSize: SizeConfig.textMultiplier * 1.8,
                          ),
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.lato(
                            color: AppColors.secondarylight1,
                            fontSize: SizeConfig.textMultiplier * 1.8,
                          ),
                        ),
                        Text(
                          '3',
                          style: GoogleFonts.lato(
                            color: AppColors.secondarylight1,
                            fontSize: SizeConfig.textMultiplier * 1.8,
                          ),
                        ),
                        Text(
                          '4',
                          style: GoogleFonts.lato(
                            color: AppColors.secondarylight1,
                            fontSize: SizeConfig.textMultiplier * 1.8,
                          ),
                        ),
                        Text(
                          '5',
                          style: GoogleFonts.lato(
                            color: AppColors.secondarylight1,
                            fontSize: SizeConfig.textMultiplier * 1.8,
                          ),
                        ),
                      ],
                    ),
                    LinearPercentIndicator(
                      lineHeight: 10,
                      animationDuration: 1200,
                      animation: true,
                      animateFromLastPercent: true,
                      restartAnimation: true,
                      backgroundColor: Colors.black,
                      percent: 0.5,
                      linearGradient: const LinearGradient(colors: [
                        Color(0xFF005696),
                        Color(0xFF11A8FD),
                      ]),
                    )
                  ],
                )),
            Text(
              'Mode',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: SizeConfig.textMultiplier * 2.4,
              ),
            ),
            SizedBox(
              height: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Auto',
                        style: GoogleFonts.lato(
                          color: AppColors.secondarylight1,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                        ),
                      ),
                      PrimaryButton(
                        height: 60,
                        width: 60,
                        padding: 20,
                        icon: AppIcons.power,
                        onpressed: () {},
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Dry',
                        style: GoogleFonts.lato(
                          color: AppColors.secondarylight1,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                        ),
                      ),
                      const Button(
                        icon: AppIcons.dry,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Cool',
                        style: GoogleFonts.lato(
                          color: AppColors.secondarylight1,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                        ),
                      ),
                      const Button(
                        icon: AppIcons.cool,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Program',
                        style: GoogleFonts.lato(
                          color: AppColors.secondarylight1,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                        ),
                      ),
                      const Button(icon: AppIcons.program)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
