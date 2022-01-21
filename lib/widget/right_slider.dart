import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class BuildRightSlider extends StatelessWidget {
  final Widget childWidget;
  final Widget motionType;
  final Color backgroundColor1;
  final Color foregroundColor1;
  final IconData icon1;
  final String label1;
  final Color backgroundColor2;
  final Color foregroundColor2;
  final IconData icon2;
  final String label2;

  const BuildRightSlider({Key? key,
    required this.childWidget,
    required this.motionType,
    required this.backgroundColor1,
    required this.foregroundColor1,
    required this.icon1,
    required this.label1,
    required this.backgroundColor2,
    required this.foregroundColor2,
    required this.icon2,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: childWidget,
      endActionPane: ActionPane(

        motion: motionType,

        children: [

          SlidableAction(
            onPressed: doSomething(),
            backgroundColor: backgroundColor1,
            foregroundColor: foregroundColor1,
            icon: icon1,
            label: label1,
          ),

          SlidableAction(
            onPressed: doSomething(),
            backgroundColor: backgroundColor2,
            foregroundColor: foregroundColor2,
            icon: icon2,
            label: label2,
          ),

        ],
      ),

    );
  }
}

doSomething() {
  print("onPressed function ");
}
