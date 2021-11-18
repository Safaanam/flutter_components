import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar View"),
          bottom: const TabBar(
            tabs: [
              Tab(text:  "Tab 1", icon: Icon(Icons.home),),
              Tab(text:  "Tab 2",icon: Icon(Icons.shopping_cart),),
              Tab(text:  "Tab 3",icon: Icon(Icons.person),)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Tab 1 Content")),
            Center(child: Text("Tab 2 Content")),
            Center(child: Text("Tab 3 Content")),
          ],
        ),
      )
  );

}

