import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_components/widget/refresh_widget.dart';

class ListViewRefreshPage extends StatefulWidget {
  @override
  _ListViewRefreshPageState createState() => _ListViewRefreshPageState();
}

class _ListViewRefreshPageState extends State<ListViewRefreshPage> {
  final keyRefresh = GlobalKey<RefreshIndicatorState>();
  List<int> data = [];

  @override
  void initState() {
    super.initState();

    loadList();
  }

  Future loadList() async {
    keyRefresh.currentState?.show();
    await Future.delayed(const Duration(milliseconds: 400));

    final random = Random();
    final data = List.generate(100, (_) => random.nextInt(100));

    setState(() => this.data = data);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("ListView Refresh"),
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
          keyRefresh: keyRefresh,
          onRefresh: loadList,
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(16),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final number = data[index];

              return buildItem(number);
            },
          ),
        );

  Widget buildItem(int number) => ListTile(
        title: Center(
          child: Text('$number', style: const TextStyle(fontSize: 32)),
        ),
      );
}
