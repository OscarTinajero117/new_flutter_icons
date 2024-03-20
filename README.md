# New Flutter Icons

English | [Español](./README_es-MX.md)

[![pub package](https://img.shields.io/pub/v/new_flutter_icons.svg)](https://pub.dartlang.org/packages/new_flutter_icons)

Customizable Icons for Flutter,Inspired by [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons), based in [flutter-icons](https://github.com/flutter-studio/flutter-icons.git)

## Bundled Icon Sets

[Browse all](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) by AntFinance (**297** icons) -> Need Update
* [`Entypo`](https://entypo.com) by Daniel Bruce (**411** icons)
* [`EvilIcons`](https://evil-icons.io) by Alexander Madyankin & Roman Shamin (v1.10.1, **70** icons)
* [`Feather`](https://feathericons.com) by Cole Bemis & Contributors (v4.7.0, **266** icons) -> Need Update
* [`FontAwesome`](https://github.com/FortAwesome/Font-Awesome) by Dave Gandy (v4.7.0, **675** icons)
* [`FontAwesome 5`](https://fontawesome.com) by Fonticons, Inc. (v5.7.0, **1500** (free)) -> Need Update
* -> Need Add FontAwesome 6
* -> Need Add Fontisto
* [`Foundation`](https://zurb.com/playground/foundation-icon-fonts-3) by ZURB, Inc. (v3.0, **283** icons)
* [`Ionicons`](https://ionicons.com/) by Ben Sperry (v4.2.4, **696** icons) -> Need Update
* [`MaterialIcons`](https://www.google.com/design/icons/) by Google, Inc. (v3.0.1, **932** icons) -> Need Update
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) by MaterialDesignIcons.com  (v4.0.96, **4416** icons) -> Need Update
* [`Octicons`](https://octicons.github.com) by Github, Inc. (v8.0.0, **177** icons) -> Need Update
* [`Zocial`](https://zocial.smcllns.com/) by Sam Collins (v1.0, **100** icons) -> Need update
* [`SimpleLineIcons`](https://simplelineicons.github.io/) by Sabbir & Contributors (v2.4.1, **189** icons) -> Need Update
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) by erikflowers (v2.0.10, **596** icons)

## Usage

To use this plugin, add `new_flutter_icons` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Widget

### IconToggle

| Prop                 | Description                                                                                                                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| selectedIconData  | Icon is displayed when value is true |
| unselectedIconData | Icon is displayed when value is false |
| activeColor | When value is true, the icon color is displayed |
| inactiveColor | When value is false, the icon color is displayed |
| value| Whether this IconToggle is selected. |
| size | Change the icon size (Default 22)  |
| onChanged | Called when the value of the IconToggle should change. |
| duration| The duration of the transition from selected Icon to unselected Icon |
| reverseDuration | he duration of the transition from unselected Icon to selected Icon |
| transitionBuilder | Transition animation function between the selected Icon and the unselected Icon |

## Example

You need to include the font in the project's pubspec.yaml:

```yaml
# Ant Design Icons -> ant,
# Entypo Icons -> ent,
# Evil Icons -> evi,
# Feather Icons -> fea,
# Font Awesome Icons -> faw,
# Font Awesome 5 Regular -> faw5
# Font Awesome 5 Solid -> faw5s
# Font Awesome 5 Brands -> faw5b
# Foundation Icons -> fou,
# Ionicons Icons -> ion,
# Material Community Icons -> mco,
# Material Icons -> mdi,
# Octicons Icons -> oct,
# Simple Line Icons -> sli,
# Zocial Icons -> zoc,
# Weather Icons -> wea

...

new_flutter_icons:
  includes:
    - ant 
    - mco
 ...
 ```

your_file.dart:

``` dart
// Import package
import 'package:flutter/material.dart';
import 'package:new_flutter_icons/new_flutter_icons.dart';

// Icon name in the original basis added icon set abbreviation name as suffix
// Hereinafter referred to as the following
//Ant Design Icons -> ant,
//Entypo Icons -> ent,
//Evil Icons -> evi,
//Feather Icons -> fea,
//Font Awesome Icons -> faw,
//Font Awesome 5 Regular -> faw5
//Font Awesome 5 Solid -> faw5s
//Font Awesome 5 Brands -> faw5b
//Foundation Icons -> fou,
//Ionicons Icons -> ion,
//Material Community Icons -> mco,
//Material Icons -> mdi,
//Octicons Icons -> oct,
//Simple Line Icons -> sli,
//Zocial Icons -> zoc,
//Weather Icons -> wea
Icon(FlutterIcons.stepforward_ant)
Icon(FlutterIcons.html5_faw)
// or
Icon(AntDesign.stepforward),
Icon(FontAwesome5.html),
```
