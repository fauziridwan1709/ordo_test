// Created by Muhamad Fauzi Ridwan on 02/10/21.

part of '_theme.dart';

class OrdoColors {
  /// Background color
  static const Color backgroundColor = Color(0xFFFCF8F8);

  /// CORE NORMAL THEME
  static const Color primaryColor = Color(0xFF303D83);
  static const Color secondaryColor = Color(0xFF808CC9);
  static const Color accentColor = Color(0xFFC8D0FB);

  static const Color black = Colors.black;
  static const Color black100 = Color(0xFF202237);
  static const Color black80 = Color(0xFF525252);
  static const Color black60 = Color(0xFF8A8A8A);
  static const Color black40 = Color(0xFFBBBBBB);

  /// DERIVE COLOR
  static const Color transparent = Colors.transparent;
  static const Color disableColor = black40;
  static const Color disable = Color(0xFF94AFB6);
  static const Color border = black40;
  static const Color border2 = Color(0xFF3C3C43);
  static const Color border3 = Color(0xFFC7C7CC);
  static const Color black56 = Color(0xFF3D6670);
  static const Color black21 = Color(0xFF212529);
  static const Color black31 = Color(0xFF6C757D);
  static Color shadowColor = black40.withOpacity(.2);

  static const Color yellow = Color(0xFFDFB300);
  static const Color orange = Color(0xFFFF9A00);
  static const Color blue = Color(0xFF53B2FC);
  static const Color green = Color(0xFF41BE06);
  static const Color neutralWhite = Color(0xFFF6F6F6);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blue2 = Color(0xFF127CCE);
  static const Color greenTukode = Color(0xFF47623F);
  static const Color greenTukode2 = Color(0xFF3AB648);
  static const Color greenTukode3 = Color(0xFF526430);
  static const Color greyTukode = Color(0xFF061737);
  static const Color greyTukode2 = Color(0xFF979696);
  static const Color greyTukode3 = Color(0xFF8A7F7F);

  static LinearGradient blueGradient() {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        blue,
        blue2,
      ],
    );
  }

  static LinearGradient greenGradient() {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        greenTukode2,
        greenTukode3,
      ],
    );
  }
}
