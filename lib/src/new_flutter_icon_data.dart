import 'package:flutter/material.dart';

/// It is used to generate IconData under different icon sets
/// The icon data for the stepforward icon.
class NewFlutterIconData extends IconData {
  /// Creates icon data.
  const NewFlutterIconData(super.codePoint, String fontFamily)
      : super(fontFamily: fontFamily, fontPackage: "new_flutter_icons");

  /// This icon is under the AntDesign icon set.
  const NewFlutterIconData.antDesign(int codePoint)
      : this(codePoint, "AntDesign");

  /// This icon is under the Entypo icon set.
  const NewFlutterIconData.entypo(int codePoint) : this(codePoint, "Entypo");

  /// This icon is under the EvilIcons icon set.
  const NewFlutterIconData.evilIcons(int codePoint)
      : this(codePoint, "EvilIcons");

  /// This icon is under the Feather icon set.
  const NewFlutterIconData.feather(int codePoint) : this(codePoint, "Feather");

  /// This icon is under the Fondation icon set.
  const NewFlutterIconData.foundation(int codePoint)
      : this(codePoint, "Foundation");

  /// This icon is under the FontAwesome icon set.
  const NewFlutterIconData.fontAwesome(int codePoint)
      : this(codePoint, "FontAwesome");

  /// This icon is under the FontAwesome5_Brands icon set.
  const NewFlutterIconData.fontAwesome5Brands(int codePoint)
      : this(codePoint, "FontAwesome5_Brands");

  /// This icon is under the FontAwesome5_Solid icon set.
  const NewFlutterIconData.fontAwesome5Solid(int codePoint)
      : this(codePoint, "FontAwesome5_Solid");

  /// This icon is under the FontAwesome5 icon set.
  const NewFlutterIconData.fontAwesome5(int codePoint)
      : this(codePoint, "FontAwesome5");

  /// This icon is under the FontAwesome6_Brands icon set.
  const NewFlutterIconData.fontAwesome6Brands(int codePoint)
      : this(codePoint, "FontAwesome6_Brands");

  /// This icon is under the FontAwesome6_Solid icon set.
  const NewFlutterIconData.fontAwesome6Solid(int codePoint)
      : this(codePoint, "FontAwesome6_Solid");

  /// This icon is under the FontAwesome6 icon set.
  const NewFlutterIconData.fontAwesome6(int codePoint)
      : this(codePoint, "FontAwesome6");

  /// This icon is under the Fontisto icon set.
  const NewFlutterIconData.fontisto(int codePoint)
      : this(codePoint, "Fontisto");

  /// This icon is under the Ionicons icon set.
  const NewFlutterIconData.ionicons(int codePoint)
      : this(codePoint, "Ionicons");

  /// This icon is under the MaterialCommunityIcons icon set.
  const NewFlutterIconData.materialCommunityIcons(int codePoint)
      : this(codePoint, "MaterialCommunityIcons");

  /// This icon is under the MaterialIcons icon set.
  const NewFlutterIconData.materialIcons(int codePoint)
      : this(codePoint, "MaterialIcons");

  /// This icon is under the Octicons icon set.
  const NewFlutterIconData.octicons(int codePoint)
      : this(codePoint, "Octicons");

  /// This icon is under the SimpleLineIcons icon set.
  const NewFlutterIconData.simpleLineIcons(int codePoint)
      : this(codePoint, "SimpleLineIcons");

  /// This icon is under the WeatherIcons icon set.
  const NewFlutterIconData.weatherIcons(int codePoint)
      : this(codePoint, "WeatherIcons");

  /// This icon is under the Zocial icon set.
  const NewFlutterIconData.zocial(int codePoint) : this(codePoint, "Zocial");
}
