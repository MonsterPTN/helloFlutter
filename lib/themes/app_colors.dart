import 'dart:ui';

class AppColors {
  static final HexColor primari = HexColor('#EB0A1E');
  static final HexColor primari2 = HexColor('#149A06');
  static final HexColor primari3 = HexColor('#2868E3');
  static final HexColor primari4 = HexColor('#808080');
  static final HexColor hintText = HexColor('#101010');
  static final HexColor backgroundApp = HexColor('#FFFFFF');
  static final HexColor textFieldColor = HexColor('#EEEEEE');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
