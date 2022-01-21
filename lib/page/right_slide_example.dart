import 'package:flutter/material.dart';
import 'package:flutter_components/widget/right_slider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class RightSliding extends StatefulWidget {
  const RightSliding({Key? key}) : super(key: key);

  @override
  _RightSlidingState createState() => _RightSlidingState();
}

class _RightSlidingState extends State<RightSliding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Right slide example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            /// Behind Motion
            BuildRightSlider(
                childWidget: ListTile(title: Text('Slide me')),
                motionType: BehindMotion(),
                backgroundColor1: Colors.lightGreen,
                foregroundColor1: Colors.black,
                icon1: Icons.share,
                label1: "Share",
                backgroundColor2: Colors.red,
                foregroundColor2: Colors.black,
                icon2: Icons.delete,
                label2: 'Delete'
            ),

            /// Drawer Motion
            BuildRightSlider(
                childWidget: ListTile(title: Text('Slide me')),
                motionType: DrawerMotion(),
                backgroundColor1: Colors.lightGreen,
                foregroundColor1: Colors.black,
                icon1: Icons.share,
                label1: "Share",
                backgroundColor2: Colors.red,
                foregroundColor2: Colors.black,
                icon2: Icons.delete,
                label2: 'Delete'
            ),

            /// Scroll Motion
            BuildRightSlider(
                childWidget: ListTile(title: Text('Slide me')),
                motionType: ScrollMotion(),
                backgroundColor1: Colors.lightGreen,
                foregroundColor1: Colors.black,
                icon1: Icons.share,
                label1: "Share",
                backgroundColor2: Colors.red,
                foregroundColor2: Colors.black,
                icon2: Icons.delete,
                label2: 'Delete'
            ),
          ],
        ),
      ),
    );
  }
}

