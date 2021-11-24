import 'package:flutter/material.dart';
import 'package:flutter_components/data/constants.dart';


class TagGrid extends StatefulWidget {
  const TagGrid({Key? key}) : super(key: key);

  @override
  _TagGridState createState() => _TagGridState();
}

class _TagGridState extends State<TagGrid> {
  final double _fontSize = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Tags'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: list.asMap().map(
                          (index, ingredient) => MapEntry(index, _buildChip(index, ingredient))
                  ).values.toList(),
                  spacing: 6,
                  runSpacing: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChip(int index, String ingredient){
    return Chip(
      label: Text(ingredient, style: TextStyle(color: Colors.black, fontSize: _fontSize)),
      backgroundColor: Color(0xFFD6D6D6),
      deleteIcon:  Icon(Icons.cancel_outlined, size: 20, color: Colors.red.shade900,),
      labelPadding: const EdgeInsets.fromLTRB(5,2,1,2),
      elevation: 5,
      onDeleted: (){
        setState(() {
          list.removeAt(index);
        });
      },
    );
  }


}



