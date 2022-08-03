import 'package:flutter/material.dart';
import 'package:flutter_overlay_apps/flutter_overlay_apps.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              // Open overlay
              await FlutterOverlayApps.showOverlay(
                  height: 300, width: 400, alignment: OverlayAlignment.center);

              // send data to overlay
              await Future.delayed(const Duration(seconds: 2));
              FlutterOverlayApps.sendDataToAndFromOverlay(
                  "Hello from main app");
            },
            child: const Text("showOverlay")),
      ),
    );
  }
}
