import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  Scroll({Key key}) : super(key: key);
  @override
  _Scroll createState() => _Scroll();
}

class _Scroll extends State<Scroll> {
  List<int> top = [];
  List<int> bottom = [0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey('bottom-sliver-list');
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () => {},
              ),
            ]),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 40,
          ),
        ),
      ],
    );
  }
}
