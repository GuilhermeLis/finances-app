import 'package:flutter/material.dart';

class AppBarCustormized extends StatefulWidget implements PreferredSizeWidget {
  AppBarCustormized({Key key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  _AppBarCustormized createState() => _AppBarCustormized();
}

class _AppBarCustormized extends State<AppBarCustormized> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Wallet'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () => {},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the next page',
          onPressed: () => {},
        ),
      ],
    );
  }
}
