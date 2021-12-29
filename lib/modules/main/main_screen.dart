import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_app/config/size_config.dart';
import 'package:tesla_app/constants/app_asset.dart';
import 'package:tesla_app/constants/app_colors.dart';
import 'package:tesla_app/constants/app_gradient.dart';
import 'package:tesla_app/constants/widgets/app_button.dart';
import 'package:tesla_app/modules/main/widgets/bottom_sheet.dart';
import 'package:tesla_app/modules/main/widgets/info_card.dart';
import 'package:tesla_app/modules/main/widgets/status.dart';
import 'package:tesla_app/modules/models/info_model.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Info> infos = Infos.infos();
    return Scaffold(
      backgroundColor: AppColors.secondarylight,
      appBar: AppBar(
        backgroundColor: AppColors.secondarylight,
        elevation: 0,
        leading: const HeaderIcon(icon: AppIcons.more),
        leadingWidth: size.width * 0.25,
        toolbarHeight: size.height * 0.12,
        title: Column(
          children: [
            Text(
              'Tesla',
              style: GoogleFonts.lato(
                color: AppColors.secondarylight1,
                fontSize: SizeConfig.textMultiplier * 1.8,
              ),
            ),
            Text(
              'Cybertruck',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: SizeConfig.textMultiplier * 1.8,
              ),
            )
          ],
        ),
        actions: const [
          HeaderIcon(icon: AppIcons.profile),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: AppColors.secondaryDark,
          gradient: AppGradient.darkGradient,
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Hero(
                    tag: 'Car',
                    transitionOnUserGestures: true,
                    child: Image.asset(
                      AppImages.car1,
                      height: size.height * 0.3,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      bottom: size.height * 0.03,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: SizeConfig.textMultiplier * 2.4,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Status(
                              icon: Icons.battery_full_rounded,
                              title: 'Battery',
                              value: '54 %',
                            ),
                            Status(
                              icon: Icons.speed,
                              title: 'Range',
                              value: '297 km',
                            ),
                            Status(
                              icon: Icons.device_thermostat_rounded,
                              title: 'Temperature',
                              value: '27 °C',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: size.width * 0.05,
                    ),
                    height: size.height * 0.25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Information',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: SizeConfig.textMultiplier * 2.4,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.22,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: infos.length,
                            itemBuilder: (ctx, i) {
                              return InfoCard(
                                title: infos[i].title!,
                                value: infos[i].value!,
                                status: infos[i].status!,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.01,
                      ),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: SizeConfig.textMultiplier * 2.4,
                            ),
                          ),
                          Text(
                            'History',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 1.9,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            const DetailsSheet()
          ],
        ),
      ),
    );
  }
}
