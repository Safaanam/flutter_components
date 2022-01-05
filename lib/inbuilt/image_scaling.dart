import 'package:flutter/material.dart';
import 'package:flutter_components/inbuilt/scaling_widget.dart';

class ImageScaling extends StatefulWidget {
  const ImageScaling({Key? key}) : super(key: key);

  @override
  _ImageScalingState createState() => _ImageScalingState();
}

class _ImageScalingState extends State<ImageScaling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Scaling"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  color: Colors.blueGrey[100],
                  elevation: 1,
                  child: ImageScalingWidget('camPic.png', 250, 120),
                ),
                Card(
                  color: Colors.blueGrey[100],
                  elevation: 1,
                  child: ImageScalingWidget('Camera.png', 250, 200),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
