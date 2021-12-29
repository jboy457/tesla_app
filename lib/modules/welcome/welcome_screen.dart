import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_app/config/size_config.dart';
import 'package:tesla_app/constants/app_colors.dart';
import 'package:tesla_app/constants/app_gradient.dart';
import 'package:tesla_app/constants/app_asset.dart';
import 'package:tesla_app/constants/widgets/app_button.dart';
import 'package:tesla_app/modules/main/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.secondarylight,
        appBar: AppBar(
          backgroundColor: AppColors.secondarylight,
          elevation: 0,
          toolbarHeight: size.height * 0.12,
          actions: const [
            HeaderIcon(icon: AppIcons.setting),
          ],
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            color: AppColors.secondaryDark,
            gradient: AppGradient.darkGradient,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  child: Column(
                    children: [
                      Text(
                        'Tesla',
                        style: GoogleFonts.lato(
                          color: AppColors.secondarylight1,
                          fontSize: SizeConfig.textMultiplier * 2.5,
                        ),
                      ),
                      Text(
                        'Cybertruck',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: SizeConfig.textMultiplier * 5,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.39,
                  width: size.width,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '297',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: SizeConfig.textMultiplier * 18,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Text(
                                'km',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.textMultiplier * 2.9,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        height: size.height * 0.3,
                        bottom: 0,
                        child: Hero(
                          tag: 'Car',
                          transitionOnUserGestures: true,
                          child: Image.asset(
                            AppImages.car,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'A/C is turned on',
                  style: GoogleFonts.lato(
                    color: AppColors.secondarylight1,
                    fontSize: SizeConfig.textMultiplier * 2.4,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                  child: Column(
                    children: [
                      Hero(
                        tag: 'Button',
                        child: PrimaryButton(
                          height: 90,
                          width: 90,
                          onpressed: () => Navigator.of(context)
                              .pushNamed(MainScreen.routeName),
                          icon: AppIcons.lock,
                          padding: 10,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        'Tap to open the car',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
