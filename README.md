# New Flutter Icons

English | [Español](./README_es-MX.md)

[![pub package](https://img.shields.io/pub/v/new_flutter_icons.svg)](https://pub.dartlang.org/packages/new_flutter_icons)

Customizable Icons for Flutter,Inspired by [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons), based in [flutter-icons](https://github.com/flutter-studio/flutter-icons.git)

## Bundled Icon Sets

[Browse all](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) from AntFinance (*298* icons)
* [`Entypo`](https://entypo.com) by Daniel Bruce (v1.0.1 with *411* icons)
* [`EvilIcons`](https://evil-icons.io) designed by Alexander Madyankin & Roman Shamin (v1.10.1 with *70* icons)
* [`Feather`](https://feathericons.com) created by Cole Bemis & Contributors (v4.28.0 featuring *286* icons)
* [`FontAwesome`](http://fortawesome.github.io/Font-Awesome/icons) by Dave Gandy (v4.7.0 containing *675* icons)
* [`FontAwesome 5`](https://fontawesome.com/v5/icons/) from Fonticons, Inc. (v5.15.3 offering *1598* free icons)
* [`FontAwesome 6`](https://fontawesome.com) designed by Fonticons, Inc. (v6.1.2 featuring *2016* free icons)
* [`Fontisto`](https://github.com/kenangundogan/fontisto) created by Kenan Gündoğan (v3.0.4 featuring *615* icons)
* [`Foundation`](https://zurb.com/playground/foundation-icon-fonts-3) by ZURB, Inc. (v3.0 with *283* icons)
* [`Ionicons`](https://ionicons.com/) crafted by Ionic (v7.1.0 containing *1338* icons)
* [`MaterialIcons`](https://fonts.google.com/icons/) by Google, Inc. (v4.0.0 featuring *2189* icons)
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) from MaterialDesignIcons.com (v6.5.95 including *6596* icons)
* [`Octicons`](https://octicons.github.com) designed by Github, Inc. (v16.3.1 with *250* icons)
* [`Zocial`](https://zocial.smcllns.com/) by Sam Collins (v1.4.0 with *100* icons)
* [`SimpleLineIcons`](https://simplelineicons.github.io/) crafted by Sabbir & Contributors (v2.5.5 with *189* icons)
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) by erikflowers (v2.0.10, *596* icons)

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

You need to add in your project:

``` dart
// Import package
import 'package:flutter/material.dart';
import 'package:new_flutter_icons/new_flutter_icons.dart';

// Use your icons
Icon(AntDesign.stepforward),
Icon(FontAwesome5.html),
```
