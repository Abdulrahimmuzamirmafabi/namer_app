import 'package:flutter/material.dart';
import 'package:myfirstapp/main.dart';
import 'package:provider/provider.dart';

class UnFavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.unfavorites.isEmpty) {
      return Center(
        child: Text('No Unfavorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.unfavorites.length} Unfavorites:'),
        ),
        for (var pair in appState.unfavorites)
          ListTile(
            leading: Icon(Icons.thumb_down),
            title: Text(pair.asLowerCase),
          ),
      ],
    );
  }
}
