import 'dart:developer';
import 'dart:io';

main(List<String> args) {
  Directory directory = Directory("../lib/src");
  File flutterIconFile = File('../lib/src/new_flutter_icons.dart');
  List<File> files = directory.listSync().map((e) => File(e.path)).toList();
  String str = '''
import 'package:flutter/material.dart';
import '../new_flutter_icon_data.dart';
class FlutterIcons {
  FlutterIcons._();
  ''';
  for (var i = 0; i < files.length; i++) {
    final File file = files[i];
    if (!file.path.contains("flutter_icon") &&
        !file.path.contains("icon_toggle")) {
      final List<String> lines = file.readAsLinesSync();
      for (var k = 0; k < lines.length; k++) {
        final String line = lines[k];
        if (line.contains('static const')) {
          log(file.path);
          var suffix = getSimple(line);
          List lineList = line.split(" ");
          lineList[5] = lineList[5] + '_$suffix';
          String temp = lineList.join(" ");
          str += '\n';
          str += temp;
        }
      }
    }
  }
  str += '}';
  flutterIconFile.writeAsStringSync(str);
  // directory.list().forEach((file)=>log(file.path));
}

Map<String, String> iconLibMap = {
  'materialCommunityIcons': 'mco',
  'materialIcons': 'mdi',
  'simpleLineIcons': 'sli',
  'fontAwesome': 'faw',
  'fontAwesome5': 'faw5',
  'fontAwesome5Solid': 'faw5s',
  'fontAwesome5Brands': 'faw5d',
};

String getSimple(String line) {
  log(line);
  var name1 = line.split(".")[1];
  var name = name1.split("(")[0];
  return iconLibMap[name] ?? name.substring(0, 3).toLowerCase();
}

enum IconLib {
  ///All Icons
  all,

  ///Ant Design Icons
  ant,

  ///Entypo Icons
  ent,

  ///Evil Icons
  evi,

  ///Feather Icons
  fea,

  ///Font Awesome Icons
  faw,

  ///Foundation Icons
  fou,

  ///Ionicons Icons
  ion,

  ///Material Community Icons
  mco,

  ///Material Icons
  mdi,

  ///Octicons Icons
  oct,

  ///Simple Line Icons
  sli,

  ///Zocial Icons
  zoc,

  ///Weather Icons
  wea
}
