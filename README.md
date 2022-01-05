<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

## Getting started


## Example

```dart
import 'package:flutter/material.dart';
import 'package:ip_geolocation_api_pk/ip_geolocation_api_pk.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ip test"),
      ),
      body: Center(
        child: Text("data: $data"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: getIp,
      ),
    );
  }

  getIp() async {
    final res = await GeolocalizationApi.getData();
    debugPrint("data: ${res?.ip}");
    if (res != null) {
      setState(() {
        data = res.toJson();
      });
    }
  }
}
```