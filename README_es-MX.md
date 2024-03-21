# New Flutter Icons

[English](./README.md) | Español

[![pub package](https://img.shields.io/pub/v/new_flutter_icons.svg)](https://pub.dartlang.org/packages/new_flutter_icons)

Iconos personalizables para Flutter, Inspirado en [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons), basado en [flutter-icons](https://github.com/flutter-studio/flutter-icons.git)

## Iconos incluidos

[Browse all](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) por AntFinance (*298* iconos)
* [`Entypo`](https://entypo.com) por Daniel Bruce (v1.0.1 with *411* iconos)
* [`EvilIcons`](https://evil-icons.io) diseñado por Alexander Madyankin & Roman Shamin (v1.10.1 with *70* iconos)
* [`Feather`](https://feathericons.com) creado por Cole Bemis & Contributors (v4.28.0 featuring *286* iconos)
* [`FontAwesome`](http://fortawesome.github.io/Font-Awesome/icons) por Dave Gandy (v4.7.0 contiene *675* iconos)
* [`FontAwesome 5`](https://fontawesome.com/v5/icons/) por Fonticons, Inc. (v5.15.3 offering *1598* free icons)
* [`FontAwesome 6`](https://fontawesome.com) diseñado por Fonticons, Inc. (v6.1.2 featuring *2016* free icons)
* [`Fontisto`](https://github.com/kenangundogan/fontisto) creado por Kenan Gündoğan (v3.0.4 featuring *615* iconos)
* [`Foundation`](https://zurb.com/playground/foundation-icon-fonts-3) por ZURB, Inc. (v3.0 with *283* iconos)
* [`Ionicons`](https://ionicons.com/) hecho por Ionic (v7.1.0 contiene *1338* iconos)
* [`MaterialIcons`](https://fonts.google.com/icons/) por Google, Inc. (v4.0.0 featuring *2189* iconos)
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) por MaterialDesignIcons.com (v6.5.95 including *6596* iconos)
* [`Octicons`](https://octicons.github.com) diseñado por Github, Inc. (v16.3.1 with *250* iconos)
* [`Zocial`](https://zocial.smcllns.com/) por Sam Collins (v1.4.0 with *100* iconos)
* [`SimpleLineIcons`](https://simplelineicons.github.io/) hecho por Sabbir & Contributors (v2.5.5 with *189* iconos)
* [`Weather Icons`](https://erikflowers.github.io/weather-icons/) por erikflowers (v2.0.10, *596* iconos)

## Uso

Para usar este paquete agrega `new_flutter_icons` a tus [dependencias en tu archivo pubspec.yaml](https://flutter.io/platform-plugins/).

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

Agrega esto a tu proyecto

``` dart
// Import package
import 'package:flutter/material.dart';
import 'package:new_flutter_icons/new_flutter_icons.dart';

// Use your icons
Icon(AntDesign.stepforward),
Icon(FontAwesome5.html),
```

## Crear clases de iconos

Para crear las clases de manera automatica, usa [icon_generator](https://github.com/OscarTinajero117/icons_generator) (Sigue sus instrucciones).

Corta los archios generados y pegalos en la carpeta `lib/src/icons/`
