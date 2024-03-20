import 'package:flutter/material.dart';
import 'package:new_flutter_icons/new_flutter_icons.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'New Flutter Icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.ac_unit),
            Icon(AntDesign.stepforward),
            Icon(Ionicons.ios_search),
            Icon(FontAwesome.glass),
            Icon(MaterialIcons.ac_unit),
            Icon(FontAwesome5.address_book),
            Icon(FontAwesome5Solid.address_book),
            Icon(FontAwesome5Brands.$500px),
            Icon(FlutterIcons.$500px_ent),
            Icon(FlutterIcons.$500px_faw5d),
            Icon(WeatherIcons.wi_alien),
            Icon(WeatherIcons.wi_cloud),
            Icon(WeatherIcons.wi_day_rain)
          ],
        ),
      ),
    );
  }
}
