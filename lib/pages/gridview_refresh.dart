import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_components/widget/refresh_widget.dart';

class GridViewRefreshPage extends StatefulWidget {
  @override
  _GridViewRefreshPageState createState() => _GridViewRefreshPageState();
}

class _GridViewRefreshPageState extends State<GridViewRefreshPage> {
  final keyRefresh = GlobalKey<RefreshIndicatorState>();
  List<int> data = [];

  @override
  void initState() {
    super.initState();

    loadList();
  }

  Future loadList() async {
    await Future.delayed(const Duration(milliseconds: 400));

    final random = Random();
    final data = List.generate(100, (_) => random.nextInt(100));

    setState(() => this.data = data);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("GridView Refresh"),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: loadList,
            ),
          ],
        ),
        body: buildList(),
      );

  Widget buildList() => data.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : RefreshWidget(
          onRefresh: loadList,
          keyRefresh: keyRefresh,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            shrinkWrap: true,
            primary: false,
            itemCount: data.length,
            itemBuilder: (context, index) {
              final number = data[index];

              return buildItem(number);
            },
          ),
        );

  Widget buildItem(int number) => GridTile(
        child: Center(
          child: Text('$number', style: const TextStyle(fontSize: 32)),
        ),
      );
}
