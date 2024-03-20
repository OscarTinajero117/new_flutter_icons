import 'package:flutter/material.dart';

/// It is used to generate IconData under different icon sets
class NewFlutterIconData extends IconData {
  const NewFlutterIconData(super.codePoint, String fontFamily)
      : super(fontFamily: fontFamily, fontPackage: "new_flutter_icons");

  const NewFlutterIconData.ionicons(int codePoint)
      : this(codePoint, "Ionicons");

  const NewFlutterIconData.antDesign(int codePoint)
      : this(codePoint, "AntDesign");

  const NewFlutterIconData.fontAwesome(int codePoint)
      : this(codePoint, "FontAwesome");

  const NewFlutterIconData.fontAwesome5Brands(int codePoint)
      : this(codePoint, "FontAwesome5_Brands");

  const NewFlutterIconData.fontAwesome5(int codePoint)
      : this(codePoint, "FontAwesome5");

  const NewFlutterIconData.fontAwesome5Solid(int codePoint)
      : this(codePoint, "FontAwesome5_Solid");

  const NewFlutterIconData.entypo(int codePoint) : this(codePoint, "Entypo");

  const NewFlutterIconData.evilIcons(int codePoint)
      : this(codePoint, "EvilIcons");

  const NewFlutterIconData.feather(int codePoint) : this(codePoint, "Feather");

  const NewFlutterIconData.foundation(int codePoint)
      : this(codePoint, "Foundation");

  const NewFlutterIconData.materialCommunityIcons(int codePoint)
      : this(codePoint, "MaterialCommunityIcons");

  const NewFlutterIconData.materialIcons(int codePoint)
      : this(codePoint, "MaterialIcons");

  const NewFlutterIconData.octicons(int codePoint)
      : this(codePoint, "Octicons");

  const NewFlutterIconData.simpleLineIcons(int codePoint)
      : this(codePoint, "SimpleLineIcons");

  const NewFlutterIconData.zocial(int codePoint) : this(codePoint, "Zocial");

  const NewFlutterIconData.weatherIcons(int codePoint)
      : this(codePoint, "WeatherIcons");
}
