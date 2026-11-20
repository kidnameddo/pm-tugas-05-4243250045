import 'package:dapur_melayu_medan/widgets/tombol_favorit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Tombol favorit berubah ikon setelah ditekan', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: TombolFavorit(namaMenu: 'Soto Medan')),
      ),
    );

    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsNothing);

    await tester.tap(find.byType(IconButton));
    await tester.pump();

    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.byIcon(Icons.favorite_border), findsNothing);
  });
}
