import 'package:flutter/material.dart';
import 'package:flutter_components/widget/left_slider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LeftSliding extends StatefulWidget {
  const LeftSliding({Key? key}) : super(key: key);

  @override
  _LeftSlidingState createState() => _LeftSlidingState();
}

class _LeftSlidingState extends State<LeftSliding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("left slide example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            /// Behind Motion
            BuildLeftSlider(
                childWidget: ListTile(title: Text('Slide me')),
                motionType: BehindMotion(),
                backgroundColor1: Color(0xFFCBEAA6),
                foregroundColor1: Colors.white,
                icon1: Icons.archive,
                label1: 'Archive',
                backgroundColor2: Color(0xFFC6E095),
                foregroundColor2: Colors.white,
                icon2: Icons.save,
                label2: 'Save'
            ),

            /// Drawer Motion
            BuildLeftSlider(
                childWidget: ListTile(title: Text('Slide me')),
                motionType: DrawerMotion(),
                backgroundColor1: Color(0xFFCBEAA6),
                foregroundColor1: Colors.white,
                icon1: Icons.archive,
                label1: 'Archive',
                backgroundColor2: Color(0xFFC6E095),
                foregroundColor2: Colors.white,
                icon2: Icons.save,
                label2: 'Save'
            ),

            /// Scroll Motion
            BuildLeftSlider(
                childWidget: ListTile(title: Text('Slide me')),
                motionType: ScrollMotion(),
                backgroundColor1: Color(0xFFCBEAA6),
                foregroundColor1: Colors.white,
                icon1: Icons.archive,
                label1: 'Archive',
                backgroundColor2: Color(0xFFC6E095),
                foregroundColor2: Colors.white,
                icon2: Icons.save,
                label2: 'Save'
            ),
          ],
        ),
      ),
    );
  }
}
