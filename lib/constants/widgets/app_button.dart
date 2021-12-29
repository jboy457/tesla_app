import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_app/constants/app_colors.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Neumorphic(
        padding: const EdgeInsets.all(5),
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: const NeumorphicBoxShape.circle(),
          depth: 8,
          lightSource: LightSource.topLeft,
          shadowDarkColor: AppColors.secondaryDark,
          shadowLightColor: AppColors.secondarylight1.withOpacity(0.5),
          color: AppColors.secondarylight,
        ),
        child: NeumorphicButton(
          padding: const EdgeInsets.all(15),
          onPressed: () {},
          style: const NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.circle(),
            surfaceIntensity: 0.4,
            // intensity: 0,
            depth: 20,
            lightSource: LightSource.topLeft,
            shadowLightColor: AppColors.secondarylight,
            color: Color(0xFF1C1F22),
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(5),
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: const NeumorphicBoxShape.circle(),
        depth: 8,
        lightSource: LightSource.topLeft,
        shadowDarkColor: Colors.black,
        shadowLightColor: AppColors.secondarylight1.withOpacity(0.5),
        color: AppColors.secondaryDark,
      ),
      child: NeumorphicButton(
        padding: const EdgeInsets.all(20),
        onPressed: () {},
        style: const NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.circle(),
          surfaceIntensity: 0.4,
          // intensity: 0,
          depth: 20,
          lightSource: LightSource.topLeft,
          shadowLightColor: AppColors.secondarylight,
          color: Color(0xFF1C1F22),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.height,
    this.width,
    this.icon,
    this.padding,
    this.onpressed,
  }) : super(key: key);

  final double? height;
  final double? width;
  final double? padding;
  final String? icon;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed!,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: width! + 2,
              height: height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(46, 57, 60, 1),
                      offset: Offset(-10, -15),
                      blurRadius: 40)
                ],
                gradient: LinearGradient(
                    begin: Alignment(-0.6624983549118042, -0.741100013256073),
                    end: Alignment(0.741100013256073, -0.6624983549118042),
                    colors: [
                      Color.fromRGBO(17, 168, 253, 1),
                      Color.fromRGBO(0, 129, 201, 1)
                    ]),
              ),
            ),
          ),
          Center(
            child: Container(
              width: width! + 3,
              height: height! + 2,
              margin: const EdgeInsets.only(top: 2),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                gradient: LinearGradient(
                    begin: Alignment(-0.6429834365844727, -0.7844399213790894),
                    end: Alignment(0.7844399213790894, -0.6429834365844727),
                    colors: [
                      Color.fromRGBO(17, 168, 253, 1),
                      Color.fromRGBO(0, 129, 201, 1)
                    ]),
              ),
            ),
          ),
          Center(
            child: Container(
              width: width! + 3,
              height: height! + 2,
              margin: const EdgeInsets.only(top: 2),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                gradient: LinearGradient(
                    begin: Alignment(-0.6429834365844727, -0.7844399213790894),
                    end: Alignment(0.7844399213790894, -0.6429834365844727),
                    colors: [
                      Color.fromRGBO(17, 168, 253, 1),
                      Color.fromRGBO(0, 129, 201, 1)
                    ]),
              ),
            ),
          ),
          Center(
            child: Container(
              width: width! - 4.0,
              height: height! - 3.50,
              margin: const EdgeInsets.only(
                top: 4,
                left: 3,
              ),
              padding: EdgeInsets.all(padding!),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                gradient: LinearGradient(
                    begin: Alignment(-0.6429834365844727, -0.7844399213790894),
                    end: Alignment(0.7844399213790894, -0.6429834365844727),
                    colors: [
                      Color.fromRGBO(0, 94, 163, 1),
                      Color.fromRGBO(16, 168, 252, 1)
                    ]),
              ),
              child: SvgPicture.asset(icon!),
            ),
          ),
        ],
      ),
    );
  }
}
