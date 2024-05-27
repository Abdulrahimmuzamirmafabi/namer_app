import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myfirstapp/main.dart';
import 'package:myfirstapp/pages/favorite_page.dart';
import 'package:provider/provider.dart';

void main() {
  group('FavoritesPage Widget Tests', () {
    testWidgets('Empty Favorites', (tester) async {
      final appState = MyAppState();
      await tester.pumpWidget(
        ChangeNotifierProvider<MyAppState>.value(
          value: appState,
          child: MaterialApp(home: FavoritesPage()),
        ),
      );

      expect(find.text('No favorites yet.'), findsOneWidget);
      expect(find.byType(ListView), findsNothing);
    });

    // testWidgets('Displaying Favorites', (tester) async {
    //   final appState = MyAppState();

    //   await tester.pumpWidget(
    //     ChangeNotifierProvider<MyAppState>.value(
    //       value: appState,
    //       child: MaterialApp(home: FavoritesPage()),
    //     ),
    //   );

    //   expect(find.text('No favorites yet.'), findsNothing);
    //   expect(find.text('You have 2 favorites:'), findsOneWidget);
    // });
  });
}
