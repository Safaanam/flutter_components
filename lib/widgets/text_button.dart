import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  // final VoidCallback onPressed;

  const TextButtonWidget({
    Key? key,
    required this.text,
    // required this.onPressed,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:  <Color>[Color(0xFFd9a7c7),
            Color(0xFFfffcdc)],),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: TextButton(onPressed: () {  },
        child: Text(text),
      ),
    );
  }
}
