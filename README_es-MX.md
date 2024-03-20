# New Flutter Icons

[English](./README.md) | Español

[![pub package](https://img.shields.io/pub/v/new_flutter_icons.svg)](https://pub.dartlang.org/packages/new_flutter_icons)

Iconos personalizables para Flutter, Inspirado en [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons), basado en [flutter-icons](https://github.com/flutter-studio/flutter-icons.git)

## Iconos incluidos

[Browse all](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) por AntFinance (**297** iconos) -> Necesita Actualización
* [`Entypo`](https://entypo.com) por Daniel Bruce (**411** iconos)
* [`EvilIcons`](https://evil-icons.io) por Alexander Madyankin & Roman Shamin (v1.10.1, **70** iconos)
* [`Feather`](https://feathericons.com) por Cole Bemis & Contributors (v4.7.0, **266** iconos) -> Necesita Actualización
* [`FontAwesome`](https://github.com/FortAwesome/Font-Awesome) por Dave Gandy (v4.7.0, **675** iconos)
* [`FontAwesome 5`](https://fontawesome.com) por Fonticons, Inc. (v5.7.0, **1500** (free)) -> Necesita Actualización
* -> Necesita Agregar FontAwesome 6
* -> Necesita Agregar Fontisto
* [`Foundation`](https://zurb.com/playground/foundation-icon-fonts-3) por ZURB, Inc. (v3.0, **283** iconos)
* [`Ionicons`](https://ionicons.com/) por Ben Sperry (v4.2.4, **696** iconos) -> Necesita Actualización
* [`MaterialIcons`](https://www.google.com/design/icons/) por Google, Inc. (v3.0.1, **932** iconos) -> Necesita Actualización
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) por MaterialDesignIcons.com  (v4.0.96, **4416** iconos) -> Necesita Actualización
* [`Octicons`](https://octicons.github.com) por Github, Inc. (v8.0.0, **177** iconos) -> Necesita Actualización
* [`Zocial`](https://zocial.smcllns.com/) por Sam Collins (v1.0, **100** iconos) -> Necesita Actualización
* [`SimpleLineIcons`](https://simplelineicons.github.io/) por Sabbir & Contributors (v2.4.1, **189** iconos) -> Necesita Actualización
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) por erikflowers (v2.0.10, **596** iconos)

## Uso

To use this plugin, add `new_flutter_icons` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Widget

### IconToggle

| Prop                 | Description                                                                                                                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| selectedIconData  | El icono se muestra cuando el valor es verdadero |
| unselectedIconData | El icono se muestra cuando el valores falso |
| activeColor | Cuando le valor es verdadero, se muestra el color del icono |
| inactiveColor | Cuando el valor es falso, se muestra el color del icono |
| value| Si el IconToggle esta seleccionado. |
| size | Tamaño del icono (default 22)  |
| onChanged |  Se llama cuando el valor del IconToggle debe cambiar. |
| duration| Es la duración de la transición desde que se selecciona el icono hasta cuando no se selecciona. |
| reverseDuration | Es la duración de la transición desde que no se selecciona el icono hasta cuando se selecciona. |
| transitionBuilder |  Función de transición de animación entre el icono seleccionado y no seleccionado. |

## Ejemplo

Necesitas incluir la fuente en el archivo pubspec.yaml del proyecto:

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
