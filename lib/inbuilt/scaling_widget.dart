import 'package:flutter/material.dart';

Widget ImageScalingWidget(String imageName, double width, double height) {

  return Image.asset('assets/images/$imageName',
    width: width,
    height: height,
    ///The image will look bigger if the scale is less than 1
    //scale: 0.8
    ///In this example, the image size will be fitted to its width.
    //fit: BoxFit.fitWidth,
    ///Define a color that will be blended to the image's pixels.
    //color: Colors.red,
    //colorBlendMode: BlendMode.darken,
  );
}