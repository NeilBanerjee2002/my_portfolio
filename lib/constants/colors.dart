import 'dart:ui';

class CustomColor {
  // Light Shades
  static const Color blueLight2 = Color(0xffe3f2fd); // Very Light Blue
  static const Color scaffoldBG= Color(0xffbbdefb); // Light Blue
  static const Color blueLight3 = Color(0xff90caf9); // Light Blue
  static const Color blueLight4 = Color(0xff9be7ff); // Light Blue (Bright)
  static const Color blueDark1 = Color(0xff64b5f6); // Medium Blue
  static const Color blueDark2 = Color(0xff42a5f5); // Darker Blue

  static const Color greenLight1 = Color(0xffa5d6a7); // Light Green
  static const Color greenLight2 = Color(0xffc5e1a5); // Medium Lime
  static const Color greenLight3 = Color(0xffdcedc8); // Light Green (Soft)
  static const Color greenDark1 = Color(0xff81c784); // Medium Green
  static const Color greenDark2 = Color(0xff66bb6a); // Darker Green

  static const Color yellowLight1 = Color(0xfffff3e0); // Light Orange
  static const Color yellowLight2 = Color(0xffffe082); // Light Yellow
  static const Color yellowDark1 = Color(0xffffd54f); // Medium Yellow
  static const Color yellowDark2 = Color(0xffffc107); // Darker Yellow

  // Additional Intermediate Shades for Smooth Transition
  static const Color cyanLight1 = Color(0xffe0f7fa); // Very Light Cyan
  static const Color cyanLight2 = Color(0xffb2ebf2); // Light Cyan
  static const Color cyanDark1 = Color(0xff80deea); // Medium Cyan
  static const Color cyanDark2 = Color(0xff4dd0e1); // Darker Cyan
}

final List<Color> backgroundColors = [
  // Blue Shades
  CustomColor.blueLight3,
  CustomColor.blueLight4,
  CustomColor.blueLight3,


  // Green Shades
  CustomColor.greenLight2,
  CustomColor.greenLight3,
  CustomColor.greenDark1,
  CustomColor.greenLight3,
  CustomColor.greenLight2,
  CustomColor.greenLight1,

  // Yellow Shades
  CustomColor.yellowLight2,
  CustomColor.yellowLight2,

  // Cyan Shades
  CustomColor.cyanLight1,
  CustomColor.cyanLight2,
  CustomColor.cyanDark1,
  CustomColor.cyanLight2,
  CustomColor.cyanLight1,

];
