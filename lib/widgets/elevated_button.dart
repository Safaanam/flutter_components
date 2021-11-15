import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Widget childWidget;
  final double width;
  final double height;
  //final VoidCallback onClick;

  const ElevatedButtonWidget({
    Key? key,
    required this.childWidget,
    required this.width,
    required this.height,
    //required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //onPressed: onClick,
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 4.0,
        padding: const EdgeInsets.all(0.0),
      ),
      child: Ink(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [ Color(0xFFC6FFDD),
                Color(0xFFFBD786),
                Color(0xFFf7797d),
              ]),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 45.0),
          alignment: Alignment.center,
          child: childWidget,
        ),
      ),
    );
  }
}